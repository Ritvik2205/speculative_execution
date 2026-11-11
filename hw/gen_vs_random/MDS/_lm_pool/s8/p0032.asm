.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
xor rax, -1128378406
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
xor rbx, 89
xor dl, 40
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
not cl
or al, al
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
bt dx, ax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
cmovnp rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
