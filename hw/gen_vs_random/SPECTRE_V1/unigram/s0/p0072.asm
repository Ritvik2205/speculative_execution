.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -90
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add sil, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
imul rdx
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
bts di, 144
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 44
sbb ebx, 79
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
