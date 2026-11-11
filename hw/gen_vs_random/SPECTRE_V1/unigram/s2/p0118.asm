.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 85
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -90
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 81
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
sub rdx, 12
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg eax, ecx
add cl, -71
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
xor si, bx
bt dx, 4
mov bl, 59
sub al, sil
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
add cl, 90 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
