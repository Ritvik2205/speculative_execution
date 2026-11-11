.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
or rcx, 54
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or dl, dil
or bl, dil
xor al, 9
test sil, 17
jmp .bb_0.1
.bb_0.1:
or al, -24
or cl, 39
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or dil, 16
xor dil, 8
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
test sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
