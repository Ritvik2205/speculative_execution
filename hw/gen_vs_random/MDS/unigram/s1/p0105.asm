.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 53 # instrumentation
cmovnl rax, rax
test cx, 401
cmovnb rsi, rcx
test cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
or sil, -49
bt ecx, 13
bts dx, bx
test al, al
and rdx, 11
not bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
or sil, sil
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
xor bl, sil
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and bl, 127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
