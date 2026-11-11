.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
cmovnb di, di
cmovnl ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
or cl, 100
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 16
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
or dl, bl
bts rax, 117
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 16
xor ax, 24729
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and al, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
