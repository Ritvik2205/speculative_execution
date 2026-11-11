.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
cmovl ax, cx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
cmovs edx, edx
lea rcx, qword ptr [rbx + rsi + 4951]
add bl, 15 # instrumentation
cmovb edi, edi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
dec bl
add al, -21 # instrumentation
mov edi, esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
sub dl, cl
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
