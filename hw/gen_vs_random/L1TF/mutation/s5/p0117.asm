.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
and al, bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
sbb di, 80
mov ecx, -1856082135
or bl, 114
cmovbe rbx, rdx
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
imul rcx
lea rcx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
