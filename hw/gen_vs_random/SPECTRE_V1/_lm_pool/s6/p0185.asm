.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
xor bl, bl
mov al, cl
setns cl
sbb cl, 105
or al, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
adc al, -82
and rcx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rcx]
sub cl, -21
xor al, -89
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
