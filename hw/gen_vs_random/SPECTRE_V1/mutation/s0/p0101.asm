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
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
mov al, al
cmp ax, 23607
or al, al
setnp cl
and dl, al
lea rdi, qword ptr [rcx + rdi + 2044]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
lea si, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
