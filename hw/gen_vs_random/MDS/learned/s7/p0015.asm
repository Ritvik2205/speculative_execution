.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
test dil, -51
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test al, bl
or sil, -78
jmp .bb_0.1
.bb_0.1:
xor dil, -70
xor cl, 15
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 86
jmp .bb_0.2
.bb_0.2:
or sil, sil
not dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and bl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test rbx, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
