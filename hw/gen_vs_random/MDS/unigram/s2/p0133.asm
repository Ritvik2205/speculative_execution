.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and dx, dx
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
cmovnz di, di
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
xor rbx, 89
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 5
cmovp rdx, rcx
and bx, 89
test al, al
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 11
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
test dil, 46
and al, -3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
