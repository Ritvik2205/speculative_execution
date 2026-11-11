.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ebx, ebx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
add sil, cl
lea ecx, qword ptr [rbx + rbx]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xchg rcx, rax
setle bl
sub dil, al
and bl, cl
xor ax, -16232
and sil, -90
btc bx, bx
cmp al, al
bt eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
