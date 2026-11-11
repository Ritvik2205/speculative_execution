.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or dl, al
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
add bl, 126 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
setnl cl
setnz al
cmovnp ebx, esi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 45
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 85
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 59
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
xor eax, 1034314125
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
