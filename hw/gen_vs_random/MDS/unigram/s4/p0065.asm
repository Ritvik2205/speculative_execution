.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 49
bt rdi, 62
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
cmovns ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
xor bx, si
cmovns ebx, ecx
xor bx, di
cmovz cx, ax
and cl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
or bl, bl
jmp .bb_0.1
.bb_0.1:
and di, ax
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and dl, -7
or dx, 15
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and dl, 107 # instrumentation
cmovs edx, esi
cmovnp rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
