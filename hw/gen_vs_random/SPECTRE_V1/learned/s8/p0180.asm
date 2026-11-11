.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
test bl, -8
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 25
cmp dil, al
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rbx + rdi + 90]
lea bx, qword ptr [rdi]
inc eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
btc ax, 70
lea si, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
