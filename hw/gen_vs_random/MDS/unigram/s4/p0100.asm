.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
bts edx, 189
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and dl, -127 # instrumentation
cmovno edi, esi
xor cl, sil
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 12
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
btc edi, ebx
test al, sil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and bl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
test bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
