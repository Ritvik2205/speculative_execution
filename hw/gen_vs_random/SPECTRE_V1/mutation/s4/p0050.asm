.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -29
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
add al, -73 # instrumentation
setnbe al
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
cmovnbe cx, ax
add cl, bl
setns dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
inc al
or dl, 1 # instrumentation
add cl, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
xor al, -41
add cl, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
