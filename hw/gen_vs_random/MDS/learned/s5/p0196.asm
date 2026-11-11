.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
xor dx, 100
bt edx, eax
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
xor cl, 98
test al, 127
btc bx, dx
and rax, rbx
btr bx, si
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
