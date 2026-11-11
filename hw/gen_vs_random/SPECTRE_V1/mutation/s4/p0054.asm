.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
test rax, -1638758413
imul rax, rcx
bts rdx, rsi
cmovb rdi, rax
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
lea di, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, cl
lea ecx, qword ptr [rbx + rcx + 13259]
add al, bl
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
lea ebx, qword ptr [rax + rax + 18654]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or rdx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
