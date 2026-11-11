.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
xor dl, 19
sbb cl, -11
add dx, 21
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
