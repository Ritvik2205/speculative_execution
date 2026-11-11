.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx, si
add dl, 109 # instrumentation
cmovnb rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
add dl, -10 # instrumentation
cmovns edx, eax
add al, 24 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 21
and cl, 81
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
lea ax, qword ptr [rbx + rdi]
btc eax, edx
lea rsi, qword ptr [rax + rdi + 27]
add bl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
