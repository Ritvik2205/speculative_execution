.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
bts si, 158
btr eax, ebx
and sil, dl
bt ebx, edx
or dl, sil
or dil, 16
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 75
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor ax, -4010
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test al, -7
btr ax, si
bt dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
