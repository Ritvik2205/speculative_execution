.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bl
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
add al, -21 # instrumentation
mov edi, esi
test al, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
cmovs edx, edx
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
lea rcx, qword ptr [rbx + rsi + 4951]
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
add bl, 15 # instrumentation
cmovb edi, edi
cmovl ax, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
sub dl, cl
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
