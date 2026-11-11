.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc si, cx
test dil, -80
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor dl, al
or cl, bl
or dil, -78
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
or ax, -20176
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
xor al, 9
or ax, -4210
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
