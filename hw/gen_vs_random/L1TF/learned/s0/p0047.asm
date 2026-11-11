.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
lea di, qword ptr [rdi + rax]
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
add cl, sil
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
sub al, 88
test dil, 38
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
setnl sil
mov si, 20858
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 92
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 14
test dil, 57
jmp .bb_0.1
.bb_0.1:
xor cl, al
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
