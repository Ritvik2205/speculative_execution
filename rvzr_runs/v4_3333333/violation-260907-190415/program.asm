.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -29521 
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi] 
btr ecx, esi 
btr dx, 245 
and eax, -2040347881 
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx] 
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38 
xchg sil, dl 
dec sil 
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87 
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi 
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi] 
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi] 
cmovo ax, bx 
cmovo rax, rbx 
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx] 
and rax, 86 
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi] 
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil 
cmp dx, -1 
and al, -118 
imul bl 
bt dx, 193 
test bl, -29 
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi 
bswap edi 
cmovbe cx, cx 
cmp dl, 83 
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx] 
mov al, 124 
sbb dl, -71 
neg ecx 
inc cl 
sub ecx, -107 
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax] 
and eax, ebx 
neg esi 
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx] 
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx] 
cmp eax, -1538116527 
cmp cl, dl 
cmovno bx, bx 
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax] 
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23 
movzx ax, sil 
sub rcx, rsi 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
