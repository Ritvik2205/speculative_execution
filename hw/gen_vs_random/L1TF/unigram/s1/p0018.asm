.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -96
add al, 48 # instrumentation
cmovnz eax, eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
sub al, cl
and rbx, rdx
jmp .bb_0.1
.bb_0.1:
sbb rcx, rdx
or rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and edi, 87
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
xor dil, sil
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 27
and edx, esi
cmovl dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
