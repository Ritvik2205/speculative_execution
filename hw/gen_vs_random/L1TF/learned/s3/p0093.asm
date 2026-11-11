.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
cbw
add bl, 91
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
bts si, 77
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
lea di, qword ptr [rcx]
lea rcx, qword ptr [rsi + rax]
xor cx, bx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and si, dx
bt dx, 223
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
lea rdx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
