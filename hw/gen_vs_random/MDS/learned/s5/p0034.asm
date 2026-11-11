.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
xor sil, al
test eax, -675944960
and al, 75
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
test al, -81
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
test al, 22
xor al, 8
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
cmovnp rdx, rbx
test rdi, 23
jmp .bb_0.1
.bb_0.1:
or cl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
