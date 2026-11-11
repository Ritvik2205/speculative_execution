.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
btr ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 77
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sbb di, dx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
