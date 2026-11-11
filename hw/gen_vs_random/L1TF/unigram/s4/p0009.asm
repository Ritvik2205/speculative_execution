.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
xor bl, al
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
bt rdx, rsi
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rcx]
imul ax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
add sil, sil
sub dil, bl
sub al, 88
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
lea rax, qword ptr [rcx + rsi + 77]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
