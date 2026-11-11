.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test bl, al
and cl, cl
bt di, ax
or bx, 59
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
xor dil, -124
xor dl, 34
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and dl, -73
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
test al, cl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
