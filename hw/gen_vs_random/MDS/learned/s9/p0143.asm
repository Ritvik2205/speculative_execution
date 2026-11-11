.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 56
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 18
and sil, -69
test cl, al
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
test dl, 48
xchg al, cl
test sil, bl
or cx, 49
jmp .bb_0.2
.bb_0.2:
or al, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
jmp .bb_0.3
.bb_0.3:
xor bl, -88
or rcx, 54
or sil, cl
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
