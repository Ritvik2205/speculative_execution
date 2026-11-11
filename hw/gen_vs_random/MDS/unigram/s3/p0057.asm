.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
btc eax, ecx
cmovns bx, dx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
bt bx, di
xor cl, 83
cmovle si, di
xor al, 55
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
xor ebx, 89
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
btr eax, 51
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 28
or sil, -78
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
bt ax, di
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
or cx, 39
xor rcx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
