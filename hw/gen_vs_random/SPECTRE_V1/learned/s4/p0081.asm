.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
imul bx, dx
and cl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rbx]
mov al, al
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 3
sub rax, -132886581
lea rsi, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
xor esi, 5
and rdi, 66
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
adc ax, -26452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
