.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns dl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
cmovnbe cx, ax
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
add cl, bl
sub dl, -29
add al, -73 # instrumentation
setnbe al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add cl, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
or dl, 1 # instrumentation
add cl, -47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
xor al, -41
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
inc al
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
