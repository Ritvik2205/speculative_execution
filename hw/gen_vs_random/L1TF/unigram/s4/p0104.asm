.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rbx + rsi + 4951]
xor sil, al
adc edx, 16
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
setnz dil
lea dx, qword ptr [rcx + rdx]
add dl, dl
xor cx, bx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
setbe al
add bl, -19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
movsx rbx, cl
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
