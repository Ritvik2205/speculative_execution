.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, dx, -88
sub dl, -48
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
btr ax, di
bt rbx, 224
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
imul eax
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or dl, al
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
