.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
btr ax, di
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sub dl, -12
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
bt rbx, 224
imul cx, dx, -88
jo .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
imul eax
or dl, al
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and sil, -55
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
or ax, 18658
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
xor rax, 29
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
