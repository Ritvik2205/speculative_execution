.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and esi, 50
xor cl, 83
bt edi, 225
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
xor bl, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
test dl, -119
btc bx, di
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
or rdx, rcx
cmovz rsi, rbx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
