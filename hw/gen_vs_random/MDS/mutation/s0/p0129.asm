.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and bl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
bts rbx, 25
bt si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnz rbx, rsi
cmovnz ebx, ecx
and al, 75
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
test cl, dl
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
or rdx, -109
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
