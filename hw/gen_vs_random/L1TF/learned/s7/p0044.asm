.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 75
bt ebx, ecx
jmp .bb_0.1
.bb_0.1:
sbb di, si
cmovbe edx, ecx
or al, dil
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cmovbe esi, edx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
and sil, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
