.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
bts bx, dx
bts rsi, 206
test bx, si
xor bl, -27
btc rdx, rcx
test di, 32
not bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 55
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
xor rax, -345061362
and bl, 20 # instrumentation
cmovo esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
xor cl, -13
and al, 68 # instrumentation
cmovns si, ax
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
