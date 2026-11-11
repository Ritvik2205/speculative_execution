.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or sil, -49
test sil, -96
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
or rax, -1561934807
xor edx, -13
test cl, 101
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
xor dl, 40
bts edi, 248
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and edx, -44
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
