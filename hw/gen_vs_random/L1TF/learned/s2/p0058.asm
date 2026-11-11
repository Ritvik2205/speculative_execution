.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
lea rax, qword ptr [rdx + rdx + 1405]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
xor sil, bl
bt esi, 52
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 41
bt edx, edx
setnbe cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 83
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 71
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
