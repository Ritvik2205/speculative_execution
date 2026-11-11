.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, cl
sub si, si
imul cx, ax, 29
sbb dl, -106
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
mov ecx, -405458789
btc rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
bt ebx, ecx
cmovo eax, ebx
cmovle rax, rsi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
cmp rcx, -121
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
imul edx, edx
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
bts cx, di
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 10
and cl, dl
xchg edi, esi
and rdx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
sbb rdx, -43
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
cmp di, -8
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
sbb sil, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
sub sil, dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
cmovle edi, edx
cmovl cx, ax
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
xor ecx, 17
or al, -88
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
cmp dil, bl
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
