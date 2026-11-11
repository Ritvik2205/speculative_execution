.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or ax, -11837
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
or bl, bl
xor rbx, 89
or sil, bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and eax, 454700988
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
btr bx, di
or bl, dl
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor sil, -15
test al, sil
and si, -121
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor cl, dl
cmovnbe bx, si
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
