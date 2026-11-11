.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and dil, -62
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or rax, -141551502
btr ax, cx
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
xor al, sil
test esi, 425331143
xor al, 9
and esi, 82
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
