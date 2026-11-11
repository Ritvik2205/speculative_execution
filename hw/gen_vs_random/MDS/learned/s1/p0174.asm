.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
not di
and cl, 127
and cl, 40
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
xor eax, 1170472196
xor dl, dl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
cmovp ebx, eax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 61
sbb rax, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
