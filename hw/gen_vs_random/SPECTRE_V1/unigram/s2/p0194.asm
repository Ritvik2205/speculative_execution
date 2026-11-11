.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dil
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
add cl, -127
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
cmp dl, 119
imul cl
inc al
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
add cl, 32 # instrumentation
cmovnbe rax, rcx
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
