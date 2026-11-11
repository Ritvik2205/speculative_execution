.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
xor rdx, 69
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
xor dil, 61
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 17
btc rsi, rbx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 30
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
or cl, cl
and bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
test edi, 12
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and dl, -73 # instrumentation
cmovns rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
