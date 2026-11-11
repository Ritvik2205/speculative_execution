.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 45
xor eax, ecx
or bl, dil
cmovp si, di
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 1
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
xor dx, 6
xor dil, cl
and sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 87
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
cmovb edx, edi
or edi, -88
xor cx, -18
xor bl, al
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
