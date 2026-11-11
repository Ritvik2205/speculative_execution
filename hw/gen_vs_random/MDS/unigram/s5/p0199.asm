.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
cmovbe edi, edx
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
btr edx, 197
or cl, 7
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
btr rdx, 24
and al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 65
and sil, al
and rcx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovnb si, bx
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
btr eax, esi
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
