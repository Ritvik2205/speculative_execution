.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
imul rdx, rdx, 44
or rax, rsi
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
sbb bx, ax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
bt dx, 81
add sil, -18
mov cl, bl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
test al, -38
cmp dl, dl
bt ecx, 247
and rsi, 0
cmp al, -122
mov dl, al
cmovp ebx, eax
and dl, 126
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
test eax, 1340292467
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
movsx esi, si
dec rdi
not sil
add rsi, -100
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
or rax, -897763206
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
sub dil, -11
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
