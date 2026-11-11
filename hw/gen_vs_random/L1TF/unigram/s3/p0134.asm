.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
lea eax, qword ptr [rbx + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
jmp .bb_0.1
.bb_0.1:
xchg rdx, rbx
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rdx, rbx
lea bx, qword ptr [rbx + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
btc rbx, 89
sub rax, -15
cmovl di, si
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
cmp ebx, 90
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
