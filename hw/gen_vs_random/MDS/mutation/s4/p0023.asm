.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
test sil, -96
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
and al, 67 # instrumentation
cmovl rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
cmovle rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
bts dx, 50
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
cmovl esi, ebx
and eax, 943733866
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
test dx, 16353
btr ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
