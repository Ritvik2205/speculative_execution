.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
bt ecx, edi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and bx, 94
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
or al, 30
btr dx, ax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test rdx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
