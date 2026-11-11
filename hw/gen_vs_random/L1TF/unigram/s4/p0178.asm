.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ax
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 66
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 84
cmovl rsi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
lea rdi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
lea rdi, qword ptr [rcx]
lea si, qword ptr [rsi + rbx + 84]
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
sbb dl, bl
btr edx, ecx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
