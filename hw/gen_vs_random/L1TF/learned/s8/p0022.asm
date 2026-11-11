.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
sub cl, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor bl, -5
btc ax, di
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
add al, dl
jmp .bb_0.1
.bb_0.1:
sub dl, -78
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
