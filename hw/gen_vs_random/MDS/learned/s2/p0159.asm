.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
cmovb ecx, edi
xor cl, 93
not si
test cl, al
cmovle esi, edi
test rdi, 95
bts ecx, ebx
or cl, dil
xor eax, 1170472196
jmp .bb_0.1
.bb_0.1:
mov rsi, rdi
or dl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
or rbx, rdi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 48
btc cx, si
or rax, 1749358813
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
