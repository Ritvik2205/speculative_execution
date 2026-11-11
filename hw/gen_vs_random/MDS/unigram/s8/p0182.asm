.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rbx, rax
and rbx, 65
or edx, edx
cmovl rsi, rdi
or dl, bl
and rdx, rdi
or al, -17
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
xor sil, -126
cmovz di, bx
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor rax, -1128378406
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
test rbx, 61
test rdi, 24
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
