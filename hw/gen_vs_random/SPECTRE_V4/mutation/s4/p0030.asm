.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
xor al, 106
add cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
sub ax, -1393
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
cmp cl, -105
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], -75
xor di, dx
and cl, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
cmovle dx, bx
add al, -127
cmovb rbx, rbx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
mul rbx
test di, dx
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
add eax, -105
cmovno rbx, rsi
sub dl, bl
cmovle rdx, rcx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
xor ax, di
sub al, dl
sbb rax, 475459025
sub cl, -51
and dl, bl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
mov rax, -4627568876460436527
adc rax, 2071185388
xor rdx, 106
bt di, si
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
sbb rbx, rcx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
cmovl bx, si
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
