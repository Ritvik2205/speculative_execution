.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
test al, -126
cmp al, 53
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
setnb cl
add al, al
sbb al, 66
and cl, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
test rsi, -1408527332
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
