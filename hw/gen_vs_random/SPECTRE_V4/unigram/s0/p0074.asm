.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
test ebx, 1263899340
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
mov rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 42
or rax, rdx
sub bl, al
cmp ax, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
sbb dl, sil
test al, dil
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
and di, 77
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 80
cmovnbe rax, rcx
not rax
or al, sil
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
add cl, -42 # instrumentation
adc bl, al
cmp si, cx
mov rbx, 9101099553822202722
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
movsx ecx, bl
btc rcx, 88
sub ecx, 79
sub si, 90
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 82
movsx ecx, al
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmp cl, 21
add cl, 8
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
sub bl, 17
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
cmovnle rax, rax
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
