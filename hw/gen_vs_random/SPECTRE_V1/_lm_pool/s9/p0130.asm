.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmp bl, cl
cmp rsi, 53
neg rbx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 97
sbb dl, bl
sub dl, -48
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
