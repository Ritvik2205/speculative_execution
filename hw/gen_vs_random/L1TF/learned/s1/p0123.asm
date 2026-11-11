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
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor dl, -82
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
lea ebx, qword ptr [rdi]
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
add edi, esi
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
add bl, dl
sub dl, cl
cmovbe dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
lea bx, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
