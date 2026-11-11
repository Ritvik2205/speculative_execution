.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
sub dl, -49
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
dec ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
bswap rcx
bts cx, 176
cmp dl, -56
inc eax
mov bl, bl
add bl, cl
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
neg ebx
add ax, -24961
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
test dl, dl
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
test ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
