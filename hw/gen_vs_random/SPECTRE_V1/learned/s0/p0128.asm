.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub dl, -29
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
setns dl
lea cx, qword ptr [rax + rdx + 74]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
dec dl
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
or cl, dl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
sbb bl, 26
cmovnbe bx, cx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
lea cx, qword ptr [rdx + rbx + 40]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
