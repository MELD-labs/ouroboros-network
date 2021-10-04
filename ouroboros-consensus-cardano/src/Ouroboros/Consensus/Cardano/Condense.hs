{-# LANGUAGE FlexibleContexts     #-}
{-# LANGUAGE FlexibleInstances    #-}
{-# LANGUAGE TypeFamilies         #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Ouroboros.Consensus.Cardano.Condense () where

import qualified Cardano.Ledger.Era as SL

import           Ouroboros.Consensus.HardFork.Combinator.Condense

import           Ouroboros.Consensus.Byron.Ledger

import           Ouroboros.Consensus.Shelley.Ledger

import           Ouroboros.Consensus.Cardano.Block
import           Ouroboros.Consensus.Cardano.CanHardFork

{-------------------------------------------------------------------------------
  Condense

  TODO where to put this?
-------------------------------------------------------------------------------}

instance CondenseConstraints ByronBlock

instance (ShelleyBasedEra era, Show (SL.TxSeq era)) => CondenseConstraints (ShelleyBlock era)

instance CardanoHardForkConstraints c => CondenseConstraints (CardanoBlock c)
