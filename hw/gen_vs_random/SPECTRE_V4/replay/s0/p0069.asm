.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
add al, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
cmovno rbx, rsi
sub dl, bl
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
sub al, dl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], -75
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
xor rdx, 106
cmovb rbx, rbx
and cl, cl
add cl, bl
add eax, -1398129660
add al, -44
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
xor al, -6
bt di, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmovle rdx, rcx
sbb rbx, rcx
sub ax, 6579
adc rax, 1690546225
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
xor ax, di
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
mul rbx
sbb rax, 59
and dl, bl
mov rax, -4627568876460436527
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
cmovle dx, bx
cmp cl, -105
xor di, dx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
cmovl bx, si
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sub cl, 78
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
