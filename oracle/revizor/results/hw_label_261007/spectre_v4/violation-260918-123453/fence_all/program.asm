.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
lfence
adc eax, -39 
lfence
or esi, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr eax, esi 
lfence
add bl, -109 # instrumentation
lfence
sbb eax, -2052726562 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock dec qword ptr [r14 + rdx] 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rcx], 7 
lfence
sbb dl, bl 
lfence
sub eax, 2030845821 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
lfence
bsf di, word ptr [r14 + rdi] 
lfence
inc esi 
lfence
test dl, dl 
lfence
cmovs ebx, eax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdx], 108 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rbx], 99 
lfence
bt eax, 84 
lfence
sub ax, si 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
imul di, word ptr [r14 + rdi] 
lfence
add dl, 31 # instrumentation
lfence
cmovnl cx, cx 
lfence
cmp al, -52 
lfence
cmp al, 70 
lfence
movzx eax, ax 
lfence
cmovnl si, ax 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock neg dword ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rsi], 48 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rax], bl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp word ptr [r14 + rcx], -83 
lfence
mul edx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rcx], 67 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rsi], 2 
lfence
btc rbx, rcx 
lfence
add bl, -18 # instrumentation
lfence
mov rcx, rsi 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
cmovns esi, dword ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or eax, dword ptr [r14 + rcx] 
lfence
xor bl, dl 
lfence
movzx eax, sil 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rdi], si 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rdx], 0 
lfence
test bl, 24 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
add rdx, qword ptr [r14 + rbx] 
lfence
btc rdi, 167 
lfence
add dl, 56 # instrumentation
lfence
cmovle rbx, rdx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rcx], 3 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rdx], al 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovs esi, dword ptr [r14 + rax] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
imul word ptr [r14 + rdx] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
sbb dil, byte ptr [r14 + rsi] 
lfence
sub dl, dl 
lfence
sub ecx, esi 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdi], dl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
