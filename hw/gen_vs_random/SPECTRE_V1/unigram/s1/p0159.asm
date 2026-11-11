.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, -106
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
add al, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
neg rcx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
sbb bl, -41
xor cl, -40
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
adc sil, bl
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
lea eax, qword ptr [rax + rbx + 88]
lea rdx, qword ptr [rdi + rdi + 39]
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
