.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
bts rbx, 25
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
xor sil, -46
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
test bl, dl
jmp .bb_0.1
.bb_0.1:
and bl, 107 # instrumentation
cmovbe di, dx
or eax, -900576213
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
btr rdi, 129
cmovle di, si
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and al, -55
and eax, 461212071
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
