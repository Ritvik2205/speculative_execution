.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, 44
cbw
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 51
xor cl, 114
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
add dl, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
bts rsi, rbx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 74
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
sub eax, -518999763
mov al, al
xor rcx, 45
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
lea dx, qword ptr [rdi + rsi + 37]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
