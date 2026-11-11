.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
lea rbx, qword ptr [rax + rax + 5]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
dec rcx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
setb cl
sbb dil, dil
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor dl, dl
lea cx, qword ptr [rax + rbx]
sbb bl, 83
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
add bl, 106 # instrumentation
cmovs edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
