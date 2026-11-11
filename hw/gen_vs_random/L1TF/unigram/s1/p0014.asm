.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 38
add dil, -49 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], cx
setp al
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
add bl, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
test edi, 96
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
movsx ebx, al
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
neg ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
