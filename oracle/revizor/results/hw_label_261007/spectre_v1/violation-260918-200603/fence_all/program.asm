.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
lfence
setnbe al 
lfence
add cl, bl 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock adc byte ptr [r14 + rax], bl 
lfence
sub dl, -29 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
add byte ptr [r14 + rsi], cl 
lfence
setns dl 
lfence
cmovnbe cx, ax 
lfence
jnb .bb_0.1 
jmp .exit_0 
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sub bx, word ptr [r14 + rbx] 
lfence
inc al 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mul qword ptr [r14 + rsi] 
lfence
add cl, 39 # instrumentation
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnl ecx, dword ptr [r14 + rbx] 
lfence
xor al, 86 
lfence
or dl, 1 # instrumentation
lfence
add cl, -47 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovs rbx, qword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
bts qword ptr [r14 + rdi], 2 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
