.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
cmovo rax, rdi
sbb cx, bx
bts rax, rdx
test eax, -818909344
imul dx
not dx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
test cx, 61
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovnbe rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
cmp dl, 73
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add sil, -26 # instrumentation
btr esi, 48
sbb bl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 47
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
inc rcx
mul ax
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
test eax, -544019457
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
adc al, cl
or ebx, 27
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
sbb sil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or edx, ebx
cmovz dx, dx
test sil, 52
xor bl, 93
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 11
sbb rsi, rax
add cx, 64
and cl, 58
mov dil, dil
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
dec rbx
cmovnle cx, dx
not bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
