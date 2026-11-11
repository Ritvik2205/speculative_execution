.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
cmovnp si, si
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
bt rdi, rcx
and cl, -127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
cmovno rdi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 11
btr ax, ax
and bl, 20 # instrumentation
cmovo edi, eax
cmovnl ebx, eax
test cx, 401
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
test dl, dl
xor ax, -5889
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
xor al, 55
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
