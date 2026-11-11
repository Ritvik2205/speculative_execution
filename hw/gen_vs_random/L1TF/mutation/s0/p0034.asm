.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 32579
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
test word ptr [r14 + rax], -9758
adc dl, cl
not rcx
imul rdi, rsi, -42
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
xor bl, cl
imul cx, di, 19
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
lea si, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
