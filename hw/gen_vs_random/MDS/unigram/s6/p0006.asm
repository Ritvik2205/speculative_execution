.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and bl, -28 # instrumentation
cmovl rax, rdi
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
and dil, 6 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
and dl, 84 # instrumentation
cmovl rsi, rax
bt rcx, 11
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
test rdi, rdx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
or rcx, 54
or al, 74
bt eax, ecx
and rsi, rax
and cl, -71
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edx
cmovz rax, rsi
cmovno ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
