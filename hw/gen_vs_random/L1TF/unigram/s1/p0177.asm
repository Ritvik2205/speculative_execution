.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
add al, al
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
xor dl, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 46
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 27
cmp rbx, rbx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
neg sil
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
xchg ecx, esi
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
dec bl
test rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
