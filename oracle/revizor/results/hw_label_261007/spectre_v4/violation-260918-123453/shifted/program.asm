.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39 
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi 
add bl, -109 # instrumentation
sbb eax, -2052726562 
and rdx, 0b1111111111000 # instrumentation
lfence
lock dec qword ptr [r14 + rdx] 
and rcx, 0b1111111111000 # instrumentation
lfence
lock btc word ptr [r14 + rcx], 7 
sbb dl, bl 
sub eax, 2030845821 
and rdi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi] 
inc esi 
test dl, dl 
cmovs ebx, eax 
and rdx, 0b1111111111111 # instrumentation
lfence
sub byte ptr [r14 + rdx], 108 
and rbx, 0b1111111111111 # instrumentation
lfence
adc word ptr [r14 + rbx], 99 
bt eax, 84 
sub ax, si 
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi] 
add dl, 31 # instrumentation
cmovnl cx, cx 
cmp al, -52 
cmp al, 70 
movzx eax, ax 
cmovnl si, ax 
and rdx, 0b1111111111000 # instrumentation
lfence
lock neg dword ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rsi], 48 
and rax, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rax], bl 
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83 
mul edx 
and rcx, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rcx], 67 
and rsi, 0b1111111111111 # instrumentation
lfence
btc qword ptr [r14 + rsi], 2 
btc rbx, rcx 
add bl, -18 # instrumentation
mov rcx, rsi 
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx] 
xor bl, dl 
movzx eax, sil 
and rdi, 0b1111111111111 # instrumentation
lfence
and word ptr [r14 + rdi], si 
and rdx, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rdx], 0 
test bl, 24 
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx] 
btc rdi, 167 
add dl, 56 # instrumentation
cmovle rbx, rdx 
and rcx, 0b1111111111000 # instrumentation
lfence
lock sbb byte ptr [r14 + rcx], 3 
and rdx, 0b1111111111111 # instrumentation
lfence
mov byte ptr [r14 + rdx], al 
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax] 
and rdx, 0b1111111111111 # instrumentation
lfence
imul word ptr [r14 + rdx] 
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi] 
sub dl, dl 
sub ecx, esi 
and rdi, 0b1111111111000 # instrumentation
lfence
xchg byte ptr [r14 + rdi], dl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
