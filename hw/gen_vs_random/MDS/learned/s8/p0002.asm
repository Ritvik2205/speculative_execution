.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
xor al, -26
and al, -55
xor dil, -5
and di, 91
and cl, bl
xor bl, 67
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
or sil, sil
test al, sil
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or sil, -78
or cl, 119
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
