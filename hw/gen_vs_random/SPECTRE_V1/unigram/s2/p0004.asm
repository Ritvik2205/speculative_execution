.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 126 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
add al, 32 # instrumentation
sbb cl, al
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 16
and rcx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
imul bl
mov dil, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
not rbx
lea rdi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 100
sub bl, 29
xor rbx, 65
btr cx, bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
