.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
add al, -71 # instrumentation
adc al, sil
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
add rcx, rdx
sbb sil, cl
mul esi
cmovnle edx, ebx
and rdi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdi]
test esi, 57
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
sbb cx, 5
cmp rax, 2115020203
mov rsi, 48
sbb cl, -104
add cl, -117 # instrumentation
cmovs rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 56
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
inc edx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
sub dx, 28
test cx, 55
cmovb si, si
and rax, 68
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edi
imul bx
add al, 122 # instrumentation
cmovns ecx, eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 62
sub al, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 22
cmovb rax, rbx
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
sub bx, 30
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
or eax, 2007177863
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 30
cmp rax, 2115020203
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
adc cl, 70
sbb dx, 15
add cl, bl
cmovo dx, bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
movsx rsi, bx
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
