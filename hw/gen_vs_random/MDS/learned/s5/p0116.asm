.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and cl, dl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or cl, 6
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test ecx, -1843375753
and edi, 23
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
bt dx, bx
or rdi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
