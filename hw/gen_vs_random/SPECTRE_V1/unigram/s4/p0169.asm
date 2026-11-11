.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add bl, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
mov dl, dil
lea rax, qword ptr [rcx + rcx + 88]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
add edx, 18
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
adc ax, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
add bl, 21 # instrumentation
adc bx, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
