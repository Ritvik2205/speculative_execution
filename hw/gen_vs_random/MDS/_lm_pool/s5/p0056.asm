.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -39
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or al, cl
xor sil, -126
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
test dl, dl
test eax, -409834435
and cl, -111
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or rax, -1523798580
and dil, al
xor dl, -43
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or rdi, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
