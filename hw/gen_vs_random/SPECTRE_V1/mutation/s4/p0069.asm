.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
cmovnz rdx, rbx
sub ebx, 75
imul ebx, ebx, 119
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
cmp cl, al
sbb al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, -31
add di, 44
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
dec dl
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
mov cx, 31310
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
sub rcx, 13
test al, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
