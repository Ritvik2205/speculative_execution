.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and sil, dil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
xor sil, -33
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
cmovbe ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
lea ecx, qword ptr [rbx]
adc bl, -73
lea rbx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
