.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor sil, 27
test al, -81
and cl, bl
or al, -61
xor cx, -18
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and dl, dil
and bl, 68
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
