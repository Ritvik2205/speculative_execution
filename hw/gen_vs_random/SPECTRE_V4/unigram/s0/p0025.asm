.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -72
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
cmp ax, -15031
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
add sil, sil
cmovnle eax, edx
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
xor edi, ecx
neg al
imul sil
cmovnb dx, dx
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 49
cmovb eax, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
or bl, al
add dx, -90
cmp al, 70
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 11
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
xor bl, al
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 21
sub ecx, 9
cmp cx, 79
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], cx
or eax, ebx
cmovnle si, di
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xchg sil, bl
and sil, dl
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and bl, dil
xor si, 74
mov rsi, 35
cmovb ebx, ecx
btc rdi, 167
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
