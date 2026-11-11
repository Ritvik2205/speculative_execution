.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx, rdx
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
sub ecx, eax
jmp .bb_0.1
.bb_0.1:
mov bl, dl
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 74
add cl, -75 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
lea edx, qword ptr [rbx + rdx + 70]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
