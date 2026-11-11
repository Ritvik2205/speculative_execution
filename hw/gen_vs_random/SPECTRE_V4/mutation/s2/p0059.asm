.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
test eax, -544019457
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovns eax, edx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
movzx eax, al
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
cmovle di, di
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
adc al, 36
or rdi, rax
cmovnl rax, rax
movzx ecx, sil
test ebx, -595096626
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
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
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
not cx
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sbb eax, -1688332460
cmp rax, -1102558854
cmovp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
