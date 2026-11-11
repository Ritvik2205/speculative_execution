.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 84
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 54
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi]
xor eax, -1721938664
setno bl
sbb al, -107
add dl, dl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
sub sil, cl
test al, -75
sub bl, al
add al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
