.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 17
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
inc dil
xchg di, ax
add bl, -26 # instrumentation
btr ebx, 87
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
xor dx, 40
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
add cl, 8 # instrumentation
adc dl, bl
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
add al, -75 # instrumentation
adc al, 79
dec rbx
imul dx, bx
mov bx, -31043
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 16
add dil, -71 # instrumentation
adc dil, cl
movzx di, dil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
add ecx, edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 80
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
cmovs edx, ebx
sub rcx, 36
cmovnp dx, ax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 83
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 2
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
sub ebx, 95
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
add dl, 41
or ax, si
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 90
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 90
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
