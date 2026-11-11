.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test edi, -1252846009
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or edi, edi
cmovbe rdx, rsi
bts di, 73
test rbx, 63
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
test ecx, -1843375753
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
cmovl di, dx
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
cmovle ax, bx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
or ax, ax
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
