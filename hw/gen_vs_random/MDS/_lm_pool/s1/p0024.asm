.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
or sil, -78
xor cl, dil
or bl, dil
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
xor dl, 34
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
jmp .bb_0.1
.bb_0.1:
test eax, 1729060510
xor ax, -16696
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xor bl, sil
test al, -7
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
