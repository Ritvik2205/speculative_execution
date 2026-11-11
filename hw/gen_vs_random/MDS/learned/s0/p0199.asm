.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
cmovnbe si, dx
add dl, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovl rcx, rdi
sbb eax, 24
and cl, 8
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rbx]
or sil, -8
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and al, 93
xor ax, 2053
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
cmovnle rcx, rax
cmovnle cx, cx
xor eax, 73
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
