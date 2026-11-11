.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
xor cl, 98
cmovns di, cx
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
cmovnbe rdx, rdi
cmovnz rax, rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
not dl
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
test al, 127
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
xor dil, -3
and dl, cl
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
bts si, 205
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
