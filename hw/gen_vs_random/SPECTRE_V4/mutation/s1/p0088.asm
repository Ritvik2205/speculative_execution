.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edi, di
test al, 114
cmp ax, 26170
and dl, 124
cmovo si, cx
test ax, 2960
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
dec cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
add bl, -24 # instrumentation
cmovnbe cx, cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
adc dil, -17
xor dil, 117
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
sub eax, -638345541
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
test ax, 21107
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and al, 82
cmovnp cx, si
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
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
test eax, -31785616
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
movsx esi, si
dec rdi
not sil
add rsi, 68
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
or rax, 185991441
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
sub dil, -40
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
