.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
btr rax, 20
xchg rsi, rcx
lea rax, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
inc edi
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
sbb bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
