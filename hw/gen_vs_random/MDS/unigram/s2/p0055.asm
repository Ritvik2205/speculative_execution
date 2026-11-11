.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
or dl, -115
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 19
or cx, si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdi
xor sil, 95
xor rdi, -50
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
cmovz rax, rdx
bts rdi, rdi
and dil, dl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and si, 3
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
