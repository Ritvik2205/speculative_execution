.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
sub rdx, 26
xor rax, rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 98
xor dil, cl
mov bl, cl
lea rsi, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 53
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 38
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
xor ebx, 69
adc sil, cl
lea bx, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
