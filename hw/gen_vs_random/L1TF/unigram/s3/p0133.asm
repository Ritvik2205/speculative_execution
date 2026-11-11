.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, al
add sil, al
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and al, -68
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
cmovl ecx, edx
sub bl, -96
setz al
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
