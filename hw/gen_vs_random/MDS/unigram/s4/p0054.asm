.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and bx, bx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and dx, 60
cmovl esi, edx
and sil, bl
and rdx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdx]
test bl, -14
and cl, -71
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and cl, -49 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
test al, -7
and cl, dil
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and sil, sil
and dl, -15 # instrumentation
cmovnp dx, dx
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
