.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
cmp dl, 119
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
sbb rbx, 6
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
lea rdi, qword ptr [rsi]
mul dl
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 75
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 84
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edx
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
not dl
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx]
add bl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
