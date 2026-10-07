.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor qword ptr [r14 + rdx], 75 
lfence
test dl, 19 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
mov eax, dword ptr [r14 + rsi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovnb si, word ptr [r14 + rsi] 
lfence
bts si, 30 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmp dword ptr [r14 + rsi], ecx 
lfence
movzx ax, al 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovbe dx, word ptr [r14 + rcx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdx], 567129166 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock neg dword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or bl, byte ptr [r14 + rbx] 
lfence
test bl, cl 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovno rbx, qword ptr [r14 + rax] 
lfence
xor di, ax 
lfence
xor dl, bl 
lfence
or ax, -12775 
lfence
or al, -71 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovp cx, word ptr [r14 + rdx] 
lfence
cmovns ax, ax 
lfence
cmovs eax, ecx 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock adc dword ptr [r14 + rsi], ecx 
lfence
bt edi, ebx 
lfence
xchg eax, ebx 
lfence
sub cl, 116 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rcx], 439393806 
lfence
add sil, 110 
lfence
sub dl, al 
lfence
add rdi, 105 
lfence
and bl, 26 
lfence
xor cl, -54 
lfence
neg ebx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock btc dword ptr [r14 + rax], 7 
lfence
imul dx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
cmovnb si, word ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
lfence
bsf ax, word ptr [r14 + rcx] 
lfence
add al, -75 # instrumentation
lfence
adc al, 79 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
neg dword ptr [r14 + rsi] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
bts dword ptr [r14 + rdx], 1 
lfence
xor al, 29 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movzx edx, word ptr [r14 + rdx] 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock or byte ptr [r14 + rdx], al 
lfence
neg rbx 
lfence
xor ax, 25554 
lfence
cmovle rdi, rsi 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sub word ptr [r14 + rbx], di 
lfence
or eax, 2007177863 
lfence
movzx bx, sil 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
