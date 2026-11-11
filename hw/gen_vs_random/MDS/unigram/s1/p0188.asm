.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
and di, 40
test sil, 12
bts ecx, ebx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
xor dil, bl
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
jmp .bb_0.1
.bb_0.1:
cmovns eax, eax
cmovb eax, edx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 41
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and cx, 49
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or bl, sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 52
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
