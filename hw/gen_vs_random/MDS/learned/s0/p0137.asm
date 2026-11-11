.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test edi, -1252846009
and bl, 68
not al
and bl, bl
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
xor cl, 15
xor bl, 67
bt bx, dx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test cl, dl
and rdx, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
