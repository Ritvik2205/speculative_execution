.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -54
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
xor dl, bl
movzx bx, sil
cmovns ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
sub cl, -74
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sub dl, al
cmovle rdi, rsi
xor di, ax
neg rbx
and bl, 26
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
neg ebx
xor ax, 25554
add sil, 26
add rdi, -94
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
or ax, -12775
bt edi, ebx
or al, -71
movzx ax, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
imul dx
add al, -75 # instrumentation
adc al, 79
bts si, 30
or eax, 2007177863
xor al, 59
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
cmovs eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
xchg eax, ebx
test bl, cl
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
