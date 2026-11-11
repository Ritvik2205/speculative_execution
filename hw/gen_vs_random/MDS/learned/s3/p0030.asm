.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and cx, -8
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 15
cmovnp rcx, rbx
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
test rax, -648054011
test cl, al
xor al, dil
or rdi, -11
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
