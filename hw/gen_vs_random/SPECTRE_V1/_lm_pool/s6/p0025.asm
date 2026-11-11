.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea rax, qword ptr [rcx + rdi + 83]
mov dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, bl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and sil, 11
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rcx]
and rdx, -98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
