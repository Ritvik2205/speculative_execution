.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi, rsi, -42
add dl, cl
xor al, bl
test cx, -20370
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
and rsi, 98
not rcx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
adc dl, cl
setnb cl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
sub al, bl
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
cmovb di, bx
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
lea bx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
