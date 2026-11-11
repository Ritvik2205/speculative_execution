.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 48
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
xor si, -73
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 6
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
inc rcx
sbb edi, -94
mov cl, sil
add al, -86 # instrumentation
cmovnp ecx, ebx
btc rcx, rcx
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
imul rdx, rbx
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
imul rcx, rax
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
bts eax, 47
or cl, dil
or dl, cl
cmovbe rsi, rcx
and cx, -117
test rdi, rax
bt ebx, eax
add dl, bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
movzx si, dil
add bl, -84 # instrumentation
cmovb cx, di
adc rdi, rax
or al, -19
btr rax, 187
mov esi, eax
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
sbb bx, 94
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
add al, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 45
add dl, 59 # instrumentation
cmovno rdx, rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
