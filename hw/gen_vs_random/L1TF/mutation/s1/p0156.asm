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
cmovl ax, cx
cmovs edx, edx
jmp .bb_0.1
.bb_0.1:
xor bl, al
setz al
lea rax, qword ptr [rsi + rdx]
mul dil
add cl, -117 # instrumentation
lea rbx, qword ptr [rcx]
lea ax, qword ptr [rbx + rax]
cmovs rax, rdi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
