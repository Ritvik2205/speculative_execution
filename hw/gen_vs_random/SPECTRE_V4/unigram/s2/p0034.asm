.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rax, di
and cx, -117
inc cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
mov cl, al
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
btr ebx, 87
sbb cx, 29
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 37
xor si, di
movsx rax, al
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
test rdi, 1222000858
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
mov di, bx
or ecx, 102
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and ebx, -122
add bl, -24 # instrumentation
cmovnbe bx, bx
mov cl, 14
test cl, al
add ebx, edx
adc bl, 79
test bl, al
cmovp rdx, rsi
movsx rdx, dil
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
inc ebx
add bl, -84 # instrumentation
cmovb si, dx
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
movzx rbx, si
or cl, cl
add dil, -61
or cx, cx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
