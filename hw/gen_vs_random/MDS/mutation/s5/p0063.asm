.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
bts rbx, 25
xor sil, -46
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and eax, -829294476
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
or eax, 359647041
cmovle di, si
and al, -114
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
btr rdi, 129
and bl, 107 # instrumentation
cmovbe di, dx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
