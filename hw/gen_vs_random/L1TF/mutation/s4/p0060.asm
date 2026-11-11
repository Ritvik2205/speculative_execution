.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rcx]
not rcx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
sub al, bl
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
imul rdi, rsi, -42
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
cmovb di, bx
test cx, -20370
xor al, bl
and rsi, 98
setnb cl
adc dl, cl
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
