.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 94
test bl, dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
bts rbx, 25
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and eax, 561041355
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
and bl, 107 # instrumentation
cmovbe di, dx
cmovle di, si
and al, -54
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
or eax, -1777347252
btr rdi, 129
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test dl, -95
bt rsi, 4
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
or al, bl
xor al, 9
test ax, 18697
or sil, -78
btc ax, dx
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
