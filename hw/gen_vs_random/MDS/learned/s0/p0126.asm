.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, cx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
or bl, cl
or rsi, 86
xor al, 55
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
bts rdx, 200
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
