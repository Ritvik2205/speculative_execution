.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
xor edx, 94
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
bts rdx, rdi
and cl, -71
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
test sil, dil
xor ax, -1005
test sil, -96
btr dx, cx
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
