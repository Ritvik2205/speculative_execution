.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ecx, ecx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 36
not di
mul dl
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
cmovnb ecx, edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
sub dl, dil
and di, 80
sub sil, al
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
or sil, 49
xor dl, 90
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmovnbe rax, rdi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
cmovb di, di
mov rdi, rbx
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
adc al, al
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
test dil, cl
cmp sil, dl
cmovns dx, dx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 6
cmovs ax, ax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
imul bl
test dl, dl
cmp si, 87
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
or cx, 97
sbb si, 89
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmovnp ax, ax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdx], eax
xor bl, sil
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
