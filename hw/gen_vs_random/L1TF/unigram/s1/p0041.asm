.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 95
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
mov sil, bl
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
add bl, -117 # instrumentation
lea rdx, qword ptr [rbx]
or rcx, -10
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
cmovno bx, bx
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
btr eax, ecx
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 22
add dil, 40 # instrumentation
cmovp rsi, rdi
lea rdi, qword ptr [rsi + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
