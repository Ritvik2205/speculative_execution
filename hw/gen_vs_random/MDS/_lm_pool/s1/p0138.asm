.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
test bl, al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
xor dil, cl
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor cl, 24
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
test dx, 16353
bt di, cx
cmovle rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
