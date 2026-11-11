.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, al
cmovle rax, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
add dl, 126 # instrumentation
setnb dl
sub dx, 34
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
cmp rsi, 61
adc sil, al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
