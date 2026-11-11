.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdi, di
cmovnb si, cx
add cl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovz rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 65
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
adc bl, sil
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
