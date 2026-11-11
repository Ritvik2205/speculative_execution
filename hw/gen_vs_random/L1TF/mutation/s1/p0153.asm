.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -128
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
mov al, cl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
sbb rdi, 110
jmp .bb_0.1
.bb_0.1:
test cx, -20370
and rsi, 98
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
sub al, bl
add dl, cl
setnb cl
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
xor al, bl
cmovb di, bx
lea bx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
adc dl, cl
not rcx
imul rdi, rsi, -42
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
