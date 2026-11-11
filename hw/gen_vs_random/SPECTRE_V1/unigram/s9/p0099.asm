.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
adc ebx, 56
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
add dl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 100
or cx, 76
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
test dl, al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
test rdx, 1657596343
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
lea rdi, qword ptr [rcx + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
movsx eax, bl
and sil, cl
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
