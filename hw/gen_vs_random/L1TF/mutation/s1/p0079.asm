.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
lea dx, qword ptr [rbx + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -24
cmp sil, -110
lea rdx, qword ptr [rdi + rbx + 6421]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
not eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
lea edx, qword ptr [rcx]
add dl, 109 # instrumentation
sbb bl, 120
lea ax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
