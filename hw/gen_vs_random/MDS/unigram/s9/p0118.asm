.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and al, 20 # instrumentation
cmovp ax, bx
and cl, -76 # instrumentation
cmovl bx, ax
and dil, -39
and al, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
jmp .bb_0.1
.bb_0.1:
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and di, 99
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
cmovo eax, ebx
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
cmovs rax, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
or si, 94
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
