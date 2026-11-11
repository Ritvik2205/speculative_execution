.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
xor rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
add edx, ebx
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
neg dx
lea rbx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
lea rsi, qword ptr [rax + rbx]
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
