.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
cmp dl, dil
sub dil, -70
or di, 7
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
btc eax, 220
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
jmp .bb_0.2
.bb_0.2:
test rbx, rax
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
