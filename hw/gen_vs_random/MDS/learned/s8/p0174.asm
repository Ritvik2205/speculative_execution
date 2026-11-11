.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and dil, -62
and cl, -19
jmp .bb_0.1
.bb_0.1:
bts rsi, rdi
or al, dil
or al, 37
and al, 49
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or edx, -1
and al, 106
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
