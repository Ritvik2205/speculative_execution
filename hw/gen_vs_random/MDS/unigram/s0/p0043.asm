.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
cmovle si, si
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 56
and cl, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
xor ax, si
btc rsi, 6
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 37
and dl, 107 # instrumentation
cmovs eax, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
xor si, di
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 55
bt rbx, 53
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
cmovnz ecx, edi
not dil
xor sil, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
