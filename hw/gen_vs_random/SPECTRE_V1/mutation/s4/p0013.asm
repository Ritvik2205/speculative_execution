.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 72 # instrumentation
cmovnl dx, bx
not bx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 43 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -62
lea rax, qword ptr [rbx + rdx + 34714]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
test bl, -8
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rsi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
