.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rdi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
cmovz eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
cmovns edx, eax
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
or dil, 12
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
test cl, cl
cmovno dx, si
xor di, di
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
and dl, 91 # instrumentation
cmovnle edx, edx
and al, -3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
