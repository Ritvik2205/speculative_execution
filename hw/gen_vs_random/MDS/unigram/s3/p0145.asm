.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
cmovnp rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
cmovz di, si
cmovz rsi, rsi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
bt rbx, rsi
or al, dil
xor eax, edx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 95
and bl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
or sil, sil
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
bts rdx, 200
btc rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
