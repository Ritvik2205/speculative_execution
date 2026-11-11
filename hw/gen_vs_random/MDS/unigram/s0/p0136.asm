.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
xor sil, 60
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 42
bt edi, 254
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
test rdx, -1624442902
cmovo rdx, rbx
cmovnbe dx, bx
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
test al, 74
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
cmovl esi, esi
or al, bl
and dl, -107 # instrumentation
cmovz rax, rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
cmovp esi, eax
cmovs edi, ecx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
