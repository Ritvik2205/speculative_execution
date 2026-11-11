.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
sub sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 96
and al, -54
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea di, qword ptr [rdi + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and eax, 933895314
neg dx
add dl, -56 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
