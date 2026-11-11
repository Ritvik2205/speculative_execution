.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 46 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
cmovnz edx, eax
cmovnl rax, rbx
xor bx, di
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
test cl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
jmp .bb_0.1
.bb_0.1:
cmovp rbx, rsi
cmovs edx, edx
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and dil, 125
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test al, al
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
btr rcx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
