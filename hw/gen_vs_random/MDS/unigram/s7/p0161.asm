.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, rbx
cmovnle ecx, edi
or dx, 125
and dil, -62
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 87
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
bts rbx, 25
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
not rax
bts rbx, 56
xor sil, 27
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
xor cl, al
bt ecx, 6
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and sil, bl
or ecx, 86
and cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
