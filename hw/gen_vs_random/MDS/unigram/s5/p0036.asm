.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -54
bt rax, rdi
bt ecx, eax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
test bl, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and bl, -87 # instrumentation
cmovo bx, di
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
cmovs edi, esi
jmp .bb_0.1
.bb_0.1:
cmovo rbx, rdx
and cl, 66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
or cx, 39
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and al, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
