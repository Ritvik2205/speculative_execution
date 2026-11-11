.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -11 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
sbb bl, al
adc si, 6
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 47
add di, 44
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
dec dl
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
mov cx, -13260
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
sub rcx, 13
test al, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
