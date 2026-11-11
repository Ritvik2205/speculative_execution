.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -21 # instrumentation
mov edi, esi
lea rcx, qword ptr [rbx + rsi + 4951]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
add bl, 15 # instrumentation
cmovb edi, edi
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
test al, bl
cmovl ax, cx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
cmovs edx, edx
dec bl
jmp .bb_0.1
.bb_0.1:
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
sub dl, cl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
