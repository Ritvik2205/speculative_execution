.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, dx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
sub al, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
test di, dx
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
bt di, si
sub cl, -51
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
cmovl bx, si
and cl, cl
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and dl, bl
mov rax, -8100960678429780222
cmovle rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
mul rbx
add al, -29
xor ax, di
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
add eax, 84
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
sub ax, -13057
cmovno rbx, rsi
cmovb rbx, rbx
xor al, -31
cmovle dx, bx
sbb rax, 1518549445
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
adc rax, 1690546225
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
xor rdx, 106
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], -75
sbb rbx, rcx
add cl, bl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmp cl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
