.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rcx]
not rdx
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
imul rbx, rdx, 43
lea dx, qword ptr [rsi + rsi + 17]
add cl, 107 # instrumentation
lea ebx, qword ptr [rax + rdi]
mov esi, ecx
lea cx, qword ptr [rcx + rcx + 67]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, al
cmovo rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
lea dx, qword ptr [rdx]
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
