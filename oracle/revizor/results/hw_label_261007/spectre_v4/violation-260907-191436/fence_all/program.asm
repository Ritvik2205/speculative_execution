.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
bts dword ptr [r14 + rdi], esi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
btr qword ptr [r14 + rbx], 0 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or dword ptr [r14 + rcx], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rcx] # instrumentation
lfence
shr edx, 1 # instrumentation
lfence
div dword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock sub qword ptr [r14 + rdi], rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovns ecx, dword ptr [r14 + rsi] 
lfence
or eax, -1434249782 
lfence
add cl, cl 
lfence
dec rdi 
lfence
add bl, -72 
lfence
or bl, cl 
lfence
cmovle edx, esi 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
xor word ptr [r14 + rdx], 77 
lfence
add dl, al 
lfence
adc rdi, rdx 
lfence
cmovnle si, cx 
lfence
test eax, 1880179600 
lfence
mul rbx 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock dec qword ptr [r14 + rbx] 
lfence
or dl, 88 
lfence
dec dl 
lfence
or bl, cl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
imul qword ptr [r14 + rcx] 
lfence
add al, al 
lfence
bswap rbx 
lfence
or rdi, rax 
lfence
cmovnl rax, rax 
lfence
movzx ecx, sil 
lfence
test ebx, -595096626 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rcx], 78 
lfence
cmovnp ecx, ebx 
lfence
and bl, dl 
lfence
xchg rcx, rdx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovnl bx, word ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
movzx esi, word ptr [r14 + rsi] 
lfence
cmovnz eax, ebx 
lfence
test rcx, -2118888343 
lfence
adc al, cl 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock sbb word ptr [r14 + rbx], di 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovo si, word ptr [r14 + rsi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
not byte ptr [r14 + rdi] 
lfence
cmovb rdx, rdi 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmp edi, dword ptr [r14 + rcx] 
lfence
not cx 
lfence
and bl, dl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rdx], cl 
lfence
sbb eax, 4 
lfence
cmp rax, -227205962 
lfence
cmovp cx, bx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
