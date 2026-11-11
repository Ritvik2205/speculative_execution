.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
test bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor sil, 27
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
bts rbx, 115
jmp .bb_0.1
.bb_0.1:
and eax, 454700988
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
btr rdi, 129
or eax, 1725503461
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and bl, 107 # instrumentation
cmovbe di, dx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
cmovle di, si
and al, -8
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
