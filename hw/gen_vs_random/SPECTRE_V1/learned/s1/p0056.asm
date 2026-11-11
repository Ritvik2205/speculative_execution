.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -21522
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
cmovnbe si, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
cmovz si, di
cmovl edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
