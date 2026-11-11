.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, dx
or dx, 55
sbb sil, -19
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
lea ecx, qword ptr [rbx + rcx + 34]
setns sil
add rdi, 22
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 18
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
bt ebx, 11
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
lea rdi, qword ptr [rsi + rdi + 98]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
