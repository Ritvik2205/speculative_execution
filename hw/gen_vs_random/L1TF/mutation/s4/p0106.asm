.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
dec bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
add al, -21 # instrumentation
mov edi, esi
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
cmovl ax, cx
cmovs edx, edx
lea rcx, qword ptr [rbx + rsi + 4951]
test al, bl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
jmp .bb_0.1
.bb_0.1:
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
