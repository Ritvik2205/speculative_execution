.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
bts si, 30
xor al, -2
test bl, cl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
add al, -75 # instrumentation
adc al, 79
sub dl, al
and bl, 26
imul dx
bt edi, ebx
or eax, 2007177863
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
cmovle rdi, rsi
neg rbx
xor cl, -54
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
test dl, 19
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
movzx ax, al
or al, 109
movzx bx, sil
neg ebx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
or ax, -12775
cmovns ax, ax
xor ax, 25554
add rdi, -94
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor di, ax
add sil, 110
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
