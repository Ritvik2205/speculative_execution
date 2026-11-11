.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
bt rcx, rbx
xor cl, al
mov al, al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and al, 100
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
mul rdi
test rcx, rdi
adc sil, 111
movsx ebx, bl
and rax, 1072797615
cmovnp rdi, rdx
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and ax, -12738
and dl, -53
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
imul dx, cx
and dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
sbb dl, -71
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
and al, 49
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
cmovl rcx, rdi
mov bx, 27738
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
bt di, si
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
imul dx, di, 53
xchg edi, edi
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
sbb ax, 1843
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
