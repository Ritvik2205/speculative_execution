.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
or edi, ecx
test ebx, -2015966884
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 49
and dil, dil
cmovz edx, eax
btr rdx, rsi
and si, -121
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 82
test esi, edx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 96
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
btr di, bx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
bts rcx, rbx
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
or esi, -110
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
