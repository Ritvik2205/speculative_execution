.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, di
jmp .bb_0.1
.bb_0.1:
xor ax, 23633
xor sil, al
jmp .bb_0.2
.bb_0.2:
or bl, -125
btr ax, 193
jmp .bb_0.3
.bb_0.3:
btc dx, 67
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
