.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
xor dl, -43
and al, -114
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
btr cx, di
xor al, dl
xor cx, -18
not bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test al, -81
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
xor bl, dil
or dl, 51
and eax, 454700988
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
