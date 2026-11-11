.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
or dil, sil
test ax, 18607
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
cmovns rax, rax
cmp al, 73
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
xor edx, 97
xor bl, bl
add sil, 20 # instrumentation
cmovnbe rcx, rsi
add cl, 63 # instrumentation
cmovl cx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
dec rsi
movsx bx, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
