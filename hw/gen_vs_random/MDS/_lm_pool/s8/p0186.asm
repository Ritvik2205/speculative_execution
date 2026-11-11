.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and al, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and cx, -2
and dx, 60
xor dl, -43
test al, dil
and dl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
test sil, -55
test al, cl
or al, 37
or edi, ecx
or dil, -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
