.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
test dil, -80
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 74
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor cl, 24
and sil, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
bt rbx, 241
or al, 54
not sil
or ax, -7150
and dl, al
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
