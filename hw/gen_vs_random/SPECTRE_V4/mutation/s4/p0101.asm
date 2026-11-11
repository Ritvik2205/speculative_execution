.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and cl, cl
cmovno rbx, rsi
sub cl, 18
cmovle rdx, rcx
bt di, si
cmovb rbx, rbx
test di, dx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
xor ax, di
adc rax, 1873854064
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
sub ax, 23
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
sub dl, bl
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sub al, dl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and dl, bl
add al, -44
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
sbb rbx, rcx
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
xor rdx, 106
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
cmovle dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
xor al, -31
xor di, dx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
cmovl bx, si
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], -75
cmp cl, 49
mul rbx
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
sbb rax, 475459025
mov rax, -8100960678429780222
add cl, bl
add eax, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
