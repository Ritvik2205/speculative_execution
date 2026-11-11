.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rax]
sbb edx, 41
test edx, 1380346728
setnbe dil
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 64
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
or dil, bl
xor al, al
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
bt ecx, edx
btr ax, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
