.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and dl, -73
and dil, dl
test dil, 46
jmp .bb_0.1
.bb_0.1:
or rsi, 51
or bl, cl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
jmp .bb_0.2
.bb_0.2:
or dl, al
or dl, -31
xor al, 9
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
