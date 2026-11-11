.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -52 # instrumentation
not edx
cmovbe rsi, rax
not rcx
setb dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
add ax, 1313
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
cmovo edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
xor eax, -603819833
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
cmovnz di, cx
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sub edi, 56
imul al
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], cl
dec edx
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
