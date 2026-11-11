.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, esi, -3
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
setnbe al
cmovno di, dx
dec cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
setp bl
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
sub ax, -15315
sbb si, bx
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
cmp dl, 119
neg ax
cmovnb esi, ebx
setbe cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
add al, -84 # instrumentation
lea eax, qword ptr [rbx + rbx + 39392]
cmovl ebx, ecx
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
