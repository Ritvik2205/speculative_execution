.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -111
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
cmovnbe ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
btc rax, rsi
btr bx, bx
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor dil, 81
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and dl, 34 # instrumentation
cmovno edx, eax
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
