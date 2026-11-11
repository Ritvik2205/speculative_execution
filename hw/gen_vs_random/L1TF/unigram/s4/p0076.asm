.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
sub cl, 32
add di, 82
lea rdi, qword ptr [rbx + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
lea rbx, qword ptr [rdx]
add cx, 59
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
sbb dil, dil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
