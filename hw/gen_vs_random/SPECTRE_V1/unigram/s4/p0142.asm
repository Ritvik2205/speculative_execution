.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 96
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add bl, 28 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
inc rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
lea edx, qword ptr [rdi + rdi]
sbb bl, sil
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
nop
or cl, al
and rcx, -29
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
add cl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 29
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
