.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
btr si, cx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and si, -121
xor rdx, -59
test dil, sil
test di, 1
btr cx, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or al, 37
test dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
