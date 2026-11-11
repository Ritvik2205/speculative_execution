.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, dx
xor cl, dil
btr edx, esi
test al, 91
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
bt rbx, 241
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
or rdx, -48
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
or bl, cl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor sil, al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
and ax, 27170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
