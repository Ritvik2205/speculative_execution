.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdi + rcx + 44]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
bts cx, cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sub dl, cl
movsx rcx, ax
sbb cl, 105
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 14
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
adc ecx, 59
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
xchg esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
