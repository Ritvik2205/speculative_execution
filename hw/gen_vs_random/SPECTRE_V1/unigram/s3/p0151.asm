.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
test bx, 73
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
lea dx, qword ptr [rdx]
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rdi]
neg rax
lea edi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 56
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
