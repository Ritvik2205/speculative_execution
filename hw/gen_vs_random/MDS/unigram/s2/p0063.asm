.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rbx, rdx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
and bl, 38 # instrumentation
cmovno rcx, rax
and al, sil
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovno dx, si
or di, di
xor al, -19
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 87
and dx, 3
or rcx, 54
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and sil, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and dl, -15 # instrumentation
cmovnp dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
