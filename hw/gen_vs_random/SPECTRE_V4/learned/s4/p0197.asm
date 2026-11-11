.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, -1688332460
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
cmovs dx, bx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
movzx rax, dil
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
cmovz si, si
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rdx
lea si, qword ptr [rsi + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 32
add bl, bl
or al, -71
cmovs rax, rdx
btr bx, cx
cmovo rcx, rcx
or edi, eax
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
cmp ax, -906
imul bx
add ebx, 3
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
cmovnb esi, ebx
sbb al, -47
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor dil, 82
add dl, -99 # instrumentation
not eax
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
xchg edx, ecx
test bl, 24
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 15
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
sbb al, 32
cmp al, 19
xor esi, ebx
sbb al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
