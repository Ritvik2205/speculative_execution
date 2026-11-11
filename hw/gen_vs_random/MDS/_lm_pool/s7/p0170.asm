.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test al, -7
or al, -78
test al, 127
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
test dil, -51
xor dl, -59
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rdx, 53
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
btc eax, 40
and rsi, 39
test dl, bl
and dil, dl
and rax, -1701787862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
