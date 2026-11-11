.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
bt rbx, rbx
and dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
cmovns cx, bx
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
bt eax, 117
and cl, 84 # instrumentation
cmovbe cx, ax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
or dl, cl
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
or bl, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and cl, -44 # instrumentation
cmovno rdi, rbx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
cmovo rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
