.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -9
and bl, sil
xor cl, bl
and edi, 23
and sil, cl
jmp .bb_0.1
.bb_0.1:
or dil, 12
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
btc ebx, esi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or al, -17
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
