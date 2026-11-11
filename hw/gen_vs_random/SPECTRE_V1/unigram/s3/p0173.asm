.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 32
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 42
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
lea rsi, qword ptr [rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe ax, si
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
imul rcx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
xor rdx, 15
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 78
add bx, -65
and bx, -118
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 93
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
add bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
