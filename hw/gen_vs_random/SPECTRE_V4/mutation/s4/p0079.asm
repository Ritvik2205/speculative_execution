.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -71
xor ax, 25554
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
xor dl, bl
add al, -75 # instrumentation
adc al, 79
movzx ax, al
sub cl, -74
neg rbx
bt edi, ebx
imul dx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
cmovs eax, ecx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
or ax, -12775
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or eax, 2007177863
and bl, 26
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add rdi, -94
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
add sil, 110
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
test dl, 19
xor al, 102
sub dl, al
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
xor di, ax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmovle rdi, rsi
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
movzx bx, sil
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
xor cl, -54
xchg eax, ebx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
test bl, cl
bts si, 30
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
cmovns ax, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
