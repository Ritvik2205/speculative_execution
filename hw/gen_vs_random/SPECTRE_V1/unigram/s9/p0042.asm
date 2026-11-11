.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, al
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rsi
add dl, -97 # instrumentation
sets cl
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add bl, -43 # instrumentation
adc dx, 66
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
lea rsi, qword ptr [rdi + rsi + 83]
lea bx, qword ptr [rsi + rax + 1]
cmp bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
