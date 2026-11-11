.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
sbb esi, ecx
or al, dl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
imul rax, rsi
mul rcx
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
xchg rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
sub al, -128
mov rsi, 4368505613814921305
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
sbb bx, 87
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
imul ebx, ebx
adc cl, bl
cmovz si, si
cmovb rcx, rsi
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
or bx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
or ax, -30990
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and bl, -30
imul ebx, edi, -24
btr di, 245
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
sbb eax, -920840872
xor eax, 365940537
adc bl, dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
test dil, -26
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
xor al, -60
xor rax, 944027678
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
adc si, -110
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub rdi, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
