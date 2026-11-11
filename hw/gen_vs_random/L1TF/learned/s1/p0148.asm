.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
or sil, dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add bl, 68
or rsi, 53
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test cl, 45
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor dl, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
