.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
adc dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
test eax, 133988823
cmp cl, 56
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, dil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
cmovp dx, di
lea ebx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
cmovns rcx, rdx
test sil, dil
add cl, 43 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -62
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
