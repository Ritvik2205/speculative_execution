.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
dec cl
and al, bl
or rcx, 88
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
test eax, 1340292467
or bx, -33
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, -119 # instrumentation
sbb esi, 9
test edx, -38580719
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
add sil, dil
mul ecx
adc eax, -689629357
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 8
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
or al, dl
xor cl, 88
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
movsx edx, di
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
cmovle ax, bx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
mul dl
add sil, sil
cmp di, -8
sub dil, dil
or si, 85
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
cmovnbe edx, ebx
sbb eax, -920840872
mov al, dl
cmovnz rax, rdi
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
cmovnz rbx, rax
adc cl, 111
mov ecx, edi
cmovno edi, ebx
sbb bl, -75
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
