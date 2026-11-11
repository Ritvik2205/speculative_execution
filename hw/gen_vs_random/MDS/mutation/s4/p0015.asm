.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
btr eax, ecx
and dl, -33 # instrumentation
cmovns rdi, rdi
bts edi, ecx
and bl, -26 # instrumentation
cmovnp rax, rbx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
bt edx, 254
cmovnb rdx, rbx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
bt rcx, rax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
cmovns edx, edi
cmovz di, cx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
and rax, -1909598591
test dl, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
