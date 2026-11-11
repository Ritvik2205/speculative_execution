.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 6
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
add dil, 76
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
lea ax, qword ptr [rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 51
xor edi, 48
or si, -97
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
add dl, dil
add cl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
