.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
xor dl, 40
or al, 24
or cl, 119
or cl, 30
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and al, -8
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
or al, -61
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and cx, -8
jmp .bb_0.1
.bb_0.1:
or sil, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
or dl, 85
xor sil, -126
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
