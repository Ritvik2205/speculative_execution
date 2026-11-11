.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
bts rdi, rdx
and al, -103
xor dl, 40
bts rax, 77
or al, sil
test eax, -409834435
or cl, 6
and al, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or dl, 85
or dl, -97
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
