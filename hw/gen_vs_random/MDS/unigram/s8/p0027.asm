.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
or cl, al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and di, 91
test dl, -95
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
and dl, 17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
btc rbx, 35
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
btc rdi, 221
btr si, cx
test cl, dil
bt rdx, 76
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
cmovnle eax, esi
cmovnb rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 49
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
