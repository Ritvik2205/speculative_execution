.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 6414
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
cmovo ax, ax
sub eax, -638345541
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmp rdx, rcx
cmovnbe rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add al, 40
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
bt bx, di
or esi, 32
and eax, -1056713114
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
add ax, -9762
adc cl, 31
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
or rbx, -107
or cl, -55
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
adc al, 41
adc cl, 6
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
dec bx
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
cmp dl, 23
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
bt bx, ax
bt cx, 31
add dl, 59 # instrumentation
cmovno rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
