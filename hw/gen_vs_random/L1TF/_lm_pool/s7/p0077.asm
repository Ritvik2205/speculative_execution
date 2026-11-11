.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
or al, -57
or rcx, 76
xor bl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
sbb bl, dl
test cl, 59
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 50
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rsi]
sbb cl, -11
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
