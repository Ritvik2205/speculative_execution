.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovo rsi, rcx
test sil, 36
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
bts rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
btr ecx, ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and al, 33 # instrumentation
cmovnle eax, esi
bts rax, 117
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
