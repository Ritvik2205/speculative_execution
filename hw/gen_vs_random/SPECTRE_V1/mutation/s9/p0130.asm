.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 71
bt rbx, 244
btr ax, di
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
imul cx, dx, -88
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
imul eax
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or dl, al
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
