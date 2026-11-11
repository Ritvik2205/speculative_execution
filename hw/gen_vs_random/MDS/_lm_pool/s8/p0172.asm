.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, dx
or sil, -49
and ecx, -104
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
xor bx, 22
test cl, 0
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and bl, al
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
or dl, cl
and al, 35
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
