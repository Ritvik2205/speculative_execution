.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 25
and al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 24
or bl, -98
or di, -18
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 63
or dl, dil
xor esi, 92
bts rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
xor dil, 50
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rax
cmovnl dx, ax
cmovo ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 23
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and dil, dl
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
