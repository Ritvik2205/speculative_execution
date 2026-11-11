.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
not al
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or sil, dil
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and si, -121
test al, 91
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
jmp .bb_0.2
.bb_0.2:
test dil, sil
bt ax, dx
and dl, bl
and bl, 68
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
