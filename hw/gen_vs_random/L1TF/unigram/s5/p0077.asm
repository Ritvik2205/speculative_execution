.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle si, si
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
test rsi, rdx
imul rcx, rsi
lea rdi, qword ptr [rsi + rdx + 20]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 71
test esi, 65
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 36
movzx dx, al
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
btc ax, di
sbb bl, -88
cmp edx, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
