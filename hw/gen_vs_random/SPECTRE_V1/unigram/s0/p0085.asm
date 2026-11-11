.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
mov sil, sil
sub cl, -21
add dl, 117 # instrumentation
sbb rdi, rdx
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
add al, 19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, dil
lea rax, qword ptr [rdx + rdx]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 83
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
