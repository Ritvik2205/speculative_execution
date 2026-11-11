.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ecx, qword ptr [rax + rdx]
cmovno edx, edx
lea ebx, qword ptr [rsi + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
sub cl, 32
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rdx]
neg ecx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 10
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
