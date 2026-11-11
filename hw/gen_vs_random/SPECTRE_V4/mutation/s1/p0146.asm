.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
sub ax, cx
cmovnz ebx, edx
cmp bl, cl
sbb dl, al
and dl, al
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and eax, esi
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
inc dil
cmp edi, 3
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
mov si, cx
xor cl, cl
sub bl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
or bl, dl
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
movsx rbx, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg al, al
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
sbb dl, 75
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and al, 59
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
cmovl rcx, rdi
mov bx, 27738
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
bt di, si
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
imul dx, di, 53
xchg edi, edi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -3
sbb ax, 10407
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
