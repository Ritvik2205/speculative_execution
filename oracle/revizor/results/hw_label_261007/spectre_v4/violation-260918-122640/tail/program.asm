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
or al, -71 
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx] 
cmovns ax, ax 
cmovs eax, ecx 
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx 
bt edi, ebx 
xchg eax, ebx 
sub cl, 116 
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806 
add sil, 110 
sub dl, al 
add rdi, 105 
and bl, 26 
xor cl, -54 
neg ebx 
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7 
imul dx 
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx] 
add al, -75 # instrumentation
adc al, 79 
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1 
xor al, 29 
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx] 
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al 
neg rbx 
xor ax, 25554 
cmovle rdi, rsi 
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di 
or eax, 2007177863 
movzx bx, sil 
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
