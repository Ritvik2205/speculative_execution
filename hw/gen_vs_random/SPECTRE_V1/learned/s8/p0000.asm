.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
mov sil, al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 85
inc rsi
and rax, -1128038253
sub al, dl
sbb cl, dl
add al, al
movsx di, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
btc ax, dx
mov sil, al
lea rbx, qword ptr [rdx + rax + 74]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
