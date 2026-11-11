.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 52
add bl, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
xor al, -41
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, sil
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdx]
sub edx, ebx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 10
add bl, 125 # instrumentation
adc bl, al
add dl, 63 # instrumentation
cmovl dx, di
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
lea rcx, qword ptr [rdx + rsi + 15]
xor dx, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
