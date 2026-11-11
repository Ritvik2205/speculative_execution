.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
imul ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 89
test rcx, rbx
add bl, -9 # instrumentation
adc rcx, 50
bt rcx, rcx
or ecx, 62
add cl, 55 # instrumentation
lea ecx, qword ptr [rdi + rdx + 15]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 57
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
inc dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
