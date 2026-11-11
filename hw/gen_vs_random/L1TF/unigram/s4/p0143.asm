.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
sbb al, sil
and bl, 89
xor dil, -42
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
lea bx, qword ptr [rdx + rax + 75]
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
inc ebx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 53
and ecx, esi
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 5
sbb rcx, 53
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -90
dec dil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 93
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
