.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and dil, bl
mov cl, al
xor cl, bl
cmp al, bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cl, al
add dil, al
jmp .bb_0.2
.bb_0.2:
or al, cl
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
