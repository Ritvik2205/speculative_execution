.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and bl, 68
or dil, bl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or dil, 12
or dl, 85
xor bl, dil
not al
and al, -8
and sil, dl
jmp .bb_0.1
.bb_0.1:
and di, 99
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
test al, 91
test bl, -114
xor rax, -1499464454
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
