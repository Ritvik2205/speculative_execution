.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
bts di, 37
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rax, -1931765367
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
and al, sil
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rdx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
