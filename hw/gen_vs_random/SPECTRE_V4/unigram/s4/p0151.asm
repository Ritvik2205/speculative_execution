.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
or rdx, 1
and al, dl
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
test al, cl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
xor al, -113
sub al, 54
cmovs bx, dx
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
test eax, 1947430392
bts di, 30
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
adc dl, dl
adc sil, -31
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
adc bl, 0
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
mov dl, cl
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
mov bl, 58
cmovle rdx, rcx
not dil
test dl, 114
cmovbe ecx, ebx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
movsx rax, bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmovnb dx, si
cmp al, sil
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
bswap edx
add al, bl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 75
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
mov esi, eax
or al, bl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 65
cmovno eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
