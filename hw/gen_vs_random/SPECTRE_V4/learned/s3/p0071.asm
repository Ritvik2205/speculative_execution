.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
or dl, dl
or cl, 66
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
adc dl, al
sub cl, -32
sub cl, -119
or cx, 23
test dl, -102
mov dl, bl
sub al, dil
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
