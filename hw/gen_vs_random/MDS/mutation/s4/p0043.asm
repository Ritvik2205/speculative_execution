.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or cl, al
test rsi, 879594088
or ax, 6575
cmovl rcx, rax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or rdx, rdi
bt edx, 75
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
