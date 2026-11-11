.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -961564216
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
or rax, -1523798580
cmovbe rdx, rdx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 87
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and bl, 38 # instrumentation
cmovno rsi, rdi
btr di, si
and dil, 125
btr esi, 33
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
xor dx, 86
not rsi
and cl, 79
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
xor rdi, -9
and dil, -128 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
test bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
