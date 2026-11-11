.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, si
and ax, cx
test rsi, rax
btr ax, 193
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
bt esi, 3
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and edi, edx
cmovs rsi, rcx
jmp .bb_0.1
.bb_0.1:
cmovo rax, rdi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
cmovp si, ax
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
btc rsi, 80
cmovs bx, bx
test eax, -1634766116
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
btc dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
