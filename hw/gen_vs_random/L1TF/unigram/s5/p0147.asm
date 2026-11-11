.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
xor dil, -42
seto dl
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and dl, dil
xor rax, 20
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 26
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
xor ax, 34
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
test ebx, eax
setle bl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
