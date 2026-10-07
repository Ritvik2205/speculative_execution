.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
lfence
cmovb edi, edi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovbe si, word ptr [r14 + rax] 
lfence
dec bl 
lfence
lea rcx, qword ptr [rbx + rsi + 4951] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rbx], -702719947 
lfence
test al, bl 
lfence
or ebx, 1 # instrumentation
lfence
and edx, ebx # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div ebx 
lfence
add al, -21 # instrumentation
lfence
mov edi, esi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
setl byte ptr [r14 + rbx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov bx, word ptr [r14 + rdi] 
lfence
cmovl ax, cx 
lfence
cmovs edx, edx 
lfence
jmp .bb_0.1 
.bb_0.1:
add al, -39 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
setnb byte ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnl cx, word ptr [r14 + rdx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rdi], dl 
lfence
sub dl, cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
