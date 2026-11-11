.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
or bl, sil
jmp .bb_0.1
.bb_0.1:
test dil, -80
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
test rax, -1579405415
test cl, -123
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
jmp .bb_0.2
.bb_0.2:
test al, cl
and bl, sil
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
and sil, cl
cmp dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
