.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
xor dl, sil
mov ecx, -405458789
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
dec bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 85
cmovno ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
sub rdi, -34
add al, 80 # instrumentation
mov cl, sil
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
xchg bx, dx
cmovle ax, dx
sub dil, al
adc di, -78
imul edi, edx
or sil, dl
mul bl
mov rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 32
test cl, -52
and cl, -118
xchg si, cx
adc si, -74
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], di
sub rax, rax
btr eax, 54
cmovnl bx, di
sbb ax, di
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
add cl, -119 # instrumentation
sbb eax, -2001663753
xchg edi, ecx
add cl, -9
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
inc cl
sub dl, al
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmp cl, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
