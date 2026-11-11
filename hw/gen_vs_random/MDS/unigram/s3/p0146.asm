.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
btc si, 99
or cl, -77
bt rsi, 238
or rdi, 21
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
cmovl rdx, rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
cmovns rbx, rbx
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
cmovns edi, esi
and dl, 57 # instrumentation
cmovnb di, si
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and ax, ax
bts dx, 50
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
bt ebx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
