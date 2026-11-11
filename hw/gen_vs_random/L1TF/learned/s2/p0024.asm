.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
add dl, 125
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add al, cl
mov dl, sil
and al, bl
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
xor dl, 19
sub cl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
