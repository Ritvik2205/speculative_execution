.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dx, ax
cmovz rcx, rdi
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
add ecx, 52
lea edx, qword ptr [rdx]
imul rbx, rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
add bl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 30
bswap rdi
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
