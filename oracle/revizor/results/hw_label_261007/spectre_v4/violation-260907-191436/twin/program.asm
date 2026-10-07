.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi 
lfence
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0 
lfence
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
lfence
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi] 
or eax, -1434249782 
add cl, cl 
dec rdi 
add bl, -72 
or bl, cl 
cmovle edx, esi 
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77 
lfence
add dl, al 
adc rdi, rdx 
cmovnle si, cx 
test eax, 1880179600 
mul rbx 
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx] 
lfence
or dl, 88 
dec dl 
or bl, cl 
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx] 
lfence
add al, al 
bswap rbx 
or rdi, rax 
cmovnl rax, rax 
movzx ecx, sil 
test ebx, -595096626 
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78 
lfence
cmovnp ecx, ebx 
and bl, dl 
xchg rcx, rdx 
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi] 
cmovnz eax, ebx 
test rcx, -2118888343 
adc al, cl 
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di 
lfence
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi] 
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi] 
lfence
cmovb rdx, rdi 
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx] 
not cx 
and bl, dl 
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl 
lfence
sbb eax, 4 
cmp rax, -227205962 
cmovp cx, bx 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
