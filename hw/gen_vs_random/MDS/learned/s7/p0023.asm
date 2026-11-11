.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor bl, 67
and cx, -8
and cl, -71
jmp .bb_0.1
.bb_0.1:
and rbx, 65
jmp .bb_0.2
.bb_0.2:
test sil, dl
xor al, 122
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
xor al, -26
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or dil, -76
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
xor rdi, -9
xor dil, sil
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
