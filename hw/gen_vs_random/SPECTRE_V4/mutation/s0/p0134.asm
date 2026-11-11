.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
btc edx, 164
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
movzx rax, di
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp cl, dl
dec cl
cmp rdi, 28
or cl, cl
bt si, 18
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
mov ebx, ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, 105 # instrumentation
cmovl esi, ecx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1772009889
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
add bl, 42 # instrumentation
movsx rdx, bl
cmovnp ax, dx
mov edi, 412386591
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
inc rax
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
or bl, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
test eax, -251558852
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
movsx esi, si
dec rdi
not sil
add rsi, 44
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
imul si, dx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
sub bl, dl
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
or rax, 1042095162
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
sub dil, 65
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
