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
sub dl, 96
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
bt rbx, 224
imul cx, dx, -88
jo .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax, ebx, 62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cx, cx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
