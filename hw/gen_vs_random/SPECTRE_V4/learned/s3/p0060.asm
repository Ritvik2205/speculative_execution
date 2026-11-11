.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor di, ax
xor dl, bl
or ax, -12775
or al, 95
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
add rdi, -94
adc eax, -79
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, ebx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
cmovle ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
mov cl, cl
adc bx, -89
cmovnb edx, ebx
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and dl, cl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg rbx
xor ax, 25554
cmovle rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
or eax, -1434249782
movzx bx, sil
cmp rax, 2115020203
movzx edx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
