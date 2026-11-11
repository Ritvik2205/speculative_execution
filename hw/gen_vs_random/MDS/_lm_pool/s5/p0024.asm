.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
xor bl, -27
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test cl, cl
or sil, -78
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
or al, 74
xor ax, -16696
and al, -103
test bx, di
and cl, sil
jmp .bb_0.2
.bb_0.2:
cmovnp rdi, rsi
or dl, 85
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
