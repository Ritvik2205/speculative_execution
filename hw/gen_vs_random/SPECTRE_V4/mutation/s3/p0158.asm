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
btc word ptr [r14 + rsi], 4
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
adc byte ptr [r14 + rdi], -127
xor rdx, 106
cmovb rbx, rbx
and cl, cl
add cl, bl
add eax, 544045319
add al, -82
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
xor al, 30
bt di, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmovle rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
xor edi, 127
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
sub si, si
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
sub dl, -16
or eax, ebx
btc rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
