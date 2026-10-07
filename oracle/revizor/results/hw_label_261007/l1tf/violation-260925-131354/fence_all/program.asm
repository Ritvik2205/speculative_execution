.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 32579 
lfence
and rsi, 98 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnz rbx, qword ptr [r14 + rcx] 
lfence
sub al, bl 
lfence
add dl, cl 
lfence
setnb cl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov cx, word ptr [r14 + rsi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and bl, byte ptr [r14 + rcx] 
lfence
xor al, bl 
lfence
cmovb di, bx 
lfence
lea bx, qword ptr [rcx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rax], -31106 
lfence
adc dl, cl 
lfence
not rcx 
lfence
imul rdi, rsi, -42 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
and si, 0b111 # instrumentation
lfence
bt word ptr [r14 + rax], si 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
