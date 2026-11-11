.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
or si, -84
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
cmp dil, 53
xor cl, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
sub rax, 714283065
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 25
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
or cx, -74
bts ax, dx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add al, dil
cmovz rcx, rdx
adc bl, al
bt cx, bx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1772009889
or cl, sil
add sil, 91 # instrumentation
adc sil, dil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
cmp bl, -79
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
xor rax, -1522567562
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 8
sub dx, -12
and dx, -107
imul dx, di, 53
sub dil, 35
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
test dil, bl
movzx eax, al
sub edx, 73
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
sbb ebx, -54
add dil, -40 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
sub rdx, 62
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
add cl, 31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], al
sbb sil, bl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 46
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
add bl, 69 # instrumentation
cmovnbe dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
