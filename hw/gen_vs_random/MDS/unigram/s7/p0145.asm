.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -69
xor di, bx
xor al, bl
cmovnz edi, ecx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 17
cmovo bx, dx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and dx, dx
and bl, -74 # instrumentation
cmovns edi, eax
jmp .bb_0.1
.bb_0.1:
not dil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 65
test dl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
