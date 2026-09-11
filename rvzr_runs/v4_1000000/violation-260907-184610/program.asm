.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 24426 
cmovp edi, ebx 
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx 
and al, bl 
cmp al, cl 
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di 
test al, al 
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99 
cmovnz rdi, rcx 
mov bl, cl 
cmovnz rbx, rdx 
btr edi, 54 
btr ax, 109 
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si 
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx] 
movzx eax, sil 
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx] 
cmp eax, 512128713 
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx 
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42 
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx] 
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi 
and esi, 126 
sbb ax, 7207 
imul dl 
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl 
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi] 
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639 
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx] 
xor bl, 27 
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22 
xor rcx, 112 
dec rbx 
cmovp rdx, rax 
test dil, -83 
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax] 
bswap rcx 
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx] 
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx] 
and al, bl 
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127 
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112 
test cl, cl 
adc bl, bl 
bts esi, 107 
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl 
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx] 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
