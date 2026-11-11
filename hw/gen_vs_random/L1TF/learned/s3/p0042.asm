.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and ax, 37
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
test ebx, 11
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, bl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jns .bb_0.2
jmp .exit_0
.bb_0.2:
cmp sil, -11
and al, bl
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
