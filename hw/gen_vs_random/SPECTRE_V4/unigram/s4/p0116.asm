.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
btr rdx, rcx
cmovnp ebx, ebx
dec rbx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
bt eax, 54
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
neg edx
add edx, esi
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], eax
btc ebx, edx
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
sub bl, cl
sub rdx, 91
and si, dx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
bt esi, 70
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 47
sub esi, -69
imul cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
sub al, sil
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
movsx ebx, al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
inc rbx
inc si
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
not cl
cmp ax, si
adc cl, al
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
cmp rdi, 28
xor eax, 167244411
movzx ax, al
test al, -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
