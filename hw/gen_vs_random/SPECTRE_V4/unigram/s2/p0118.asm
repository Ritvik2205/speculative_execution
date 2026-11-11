.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], -118
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and bx, 20
or sil, -47
imul bx, dx
add al, 41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 72
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
btc edi, 125
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 34
and bx, bx
imul dx, di, 53
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
xor rax, rdx
cmp bl, dil
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
btr edi, 54
add dl, bl
cmp sil, bl
sub dil, -28
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 5
add bl, 126 # instrumentation
cmovb eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
movzx edx, bl
btc rbx, 52
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
add ebx, -57
sbb dl, 53
adc rbx, 60
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
sub dx, bx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 71
add bl, -59
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
cmovle rsi, rsi
or dl, dl
add bl, 95 # instrumentation
mov cl, 17
and dl, dil
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 13
mul ecx
not rbx
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovz rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
