.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rbx + rsi + 4951]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
movzx ebx, si
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
bt esi, 76
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and bl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add cl, 102 # instrumentation
sbb si, bx
sbb bl, -94
lea rcx, qword ptr [rbx + rsi + 4951]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 83
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
