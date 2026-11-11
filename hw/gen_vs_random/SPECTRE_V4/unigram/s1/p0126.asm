.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
imul bl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], ebx
sub dx, -12
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and al, dl
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
xor rsi, -3
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdx
cmovnbe edx, edi
and dl, dil
or bx, -33
sub dl, 107
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovl cx, cx
cmovnz rbx, rsi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rsi
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
inc al
xor bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
imul bx, cx
imul rbx, rax
sbb bl, -79
and eax, -784085938
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
mov esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
mov bl, dil
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
xchg dx, cx
adc cx, 70
cmp rax, rax
sub eax, -638345541
btc ebx, edx
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], -117
mov rsi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
