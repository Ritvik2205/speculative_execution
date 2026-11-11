.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
test dil, dl
and cl, cl
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
bts rdx, rcx
xor dl, -19
and al, 75
and ax, -4410
xor dl, -19
test ebx, -961564216
test al, -81
and eax, 943733866
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
