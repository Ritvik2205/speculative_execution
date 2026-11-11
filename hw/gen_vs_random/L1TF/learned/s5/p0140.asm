.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 32
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
or bl, dl
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
sub sil, -99
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rbx + rsi]
xor bl, al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 62
and dil, bl
or ax, -18131
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
