.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cx, dx
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rbx], ax
add si, 67
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
imul rsi, rsi, 87
and ebx, eax
jmp .bb_0.1
.bb_0.1:
adc bl, 68
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
xchg ax, bx
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
sbb rcx, 42
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
