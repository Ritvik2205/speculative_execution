.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
xor al, cl
and edx, -44
xor ax, -6793
bt ebx, edx
test eax, -675944960
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor dil, -3
xor bl, dil
xor rbx, 89
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
