.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 63
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
or ax, bx
cmovp dx, ax
and rax, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
btc rbx, 63
and sil, -49
xchg sil, sil
movzx rax, sil
sbb al, cl
movsx eax, dl
add bl, dil
test eax, 1561062795
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 58
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
cmovs rcx, rax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
sub dx, si
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], ebx
or dx, 82
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 85
or cl, sil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
add cx, 67
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
imul dx, bx, 37
adc bl, 89
cmovnbe ecx, ebx
sbb eax, ebx
and cl, 58
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 68
sub dl, dil
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 72
cmovno ecx, edx
cmovz ecx, ecx
movzx ax, dl
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
add dl, 41
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 82
imul ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
