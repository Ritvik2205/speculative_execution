.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -76 # instrumentation
adc dil, -27
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or dl, al
lea ebx, qword ptr [rax + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
add bl, -12 # instrumentation
lea rsi, qword ptr [rdi + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
add al, -25 # instrumentation
sbb cx, di
or eax, -1641258390
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
adc ax, -614
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
setnp al
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
xor al, -119
sub dl, dl
movzx ebx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
