.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, cx
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
xor dl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or dl, -97
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or cl, bl
and rax, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
