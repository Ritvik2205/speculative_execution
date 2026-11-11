.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
cmp dil, al
movzx bx, al
cmovnz rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
movsx rdi, al
movzx rsi, cx
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
cmovbe edx, edx
xor edi, 127
and si, -74
neg rcx
and rax, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
add al, al
movzx edi, cl
adc bx, 52
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
dec cx
cmovb rbx, rbx
xchg rdx, rdx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
sbb edi, 107
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
bt rcx, 236
and dil, -23
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdx
sbb rbx, 20
and ax, di
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 16
imul rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
