--
-- CDDL HEADER START
--
-- This file and its contents are supplied under the terms of the
-- Common Development and Distribution License ("CDDL"), version 1.0.
-- You may only use this file in accordance with the terms of version
-- 1.0 of the CDDL.
--
-- A full copy of the text of the CDDL should have accompanied this
-- source.  A copy of the CDDL is also available via the Internet at
-- http://www.illumos.org/license/CDDL.
--
-- CDDL HEADER END
--
--
-- Copyright 2020 Todor Radonov. All rights reserved.
--
size = { 2048, 2048 }


defineProperty("Radar_brt", createGlobalPropertyf("custom/rdr4b/brightness", 0.8))
defineProperty("Radar_tilt", createGlobalPropertyf("custom/rdr4b/tilt", 0.0))
defineProperty("Radar_gain", createGlobalPropertyf("custom/rdr4b/gain", 0.0))
defineProperty("Radar_range", createGlobalPropertyi("custom/rdr4b/range", 0))
defineProperty("Radar_mode", createGlobalPropertyi("custom/rdr4b/mode", 0))
defineProperty("Radar_stab", createGlobalPropertyi("custom/rdr4b/stab", 1))

