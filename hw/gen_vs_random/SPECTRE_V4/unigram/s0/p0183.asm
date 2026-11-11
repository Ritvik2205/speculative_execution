.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rbx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
add dl, -12 # instrumentation
cmovp ecx, edi
imul dx
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
add cl, -9
xor ebx, -62
test sil, 68
sub al, sil
sub sil, 71
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
sbb cx, -114
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdi]
imul si, ax
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
test dl, dl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 31
cmp al, -78
xchg edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
sbb rcx, -73
dec dl
sub dl, cl
xor ebx, 40
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
mov sil, al
cmovnb rax, rcx
cmp ebx, 80
neg rdi
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
cmp sil, 127
inc ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
btc esi, ebx
cmp dil, 53
sub bl, bl
sub al, sil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
