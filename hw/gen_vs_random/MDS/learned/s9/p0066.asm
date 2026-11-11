.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
xor rbx, 89
xor dil, cl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or di, 99
jmp .bb_0.1
.bb_0.1:
or sil, al
and al, bl
xor cl, dil
xor al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
bts rcx, rsi
test al, sil
and dl, -73
xor al, 9
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
