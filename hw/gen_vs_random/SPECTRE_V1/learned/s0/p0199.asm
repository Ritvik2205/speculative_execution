.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 49
dec al
xor sil, -33
and ax, 32540
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
sub bl, -6
sub bl, cl
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
