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
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
cmovnle rsi, rsi
xor al, 14
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
mov si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
