.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
lea rcx, qword ptr [rbx + rsi + 4951]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
test al, bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add al, -21 # instrumentation
mov edi, esi
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rax + rax]
jmp .bb_0.2
.bb_0.2:
add al, 71 # instrumentation
setp dl
mul esi
mov cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
