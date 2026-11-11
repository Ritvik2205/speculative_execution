.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 50
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -58
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 19
sub ebx, 82
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 66
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dl
add dil, -47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
lea rdi, qword ptr [rcx + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -19
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
adc rdi, -75
xor ax, -2537
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
