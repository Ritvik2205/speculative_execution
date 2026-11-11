.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
bt edx, ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and al, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
bts ebx, esi
and dl, 107 # instrumentation
cmovs ebx, edx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 90
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
cmovnl esi, eax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
test sil, al
not bx
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 68
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
