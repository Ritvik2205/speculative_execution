.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
test dil, 86
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test esi, 6
test bl, al
cmovnbe rbx, rsi
adc dil, 26
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test ax, dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
sub bl, 17
sbb dil, 34
add dil, dl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
or al, bl
add edx, 54
xchg dl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
or dl, dl
mov bl, 22
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 81
cmp bl, 13
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
test rdx, 79
and rcx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rcx]
btc bx, dx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add rbx, rsi
cmovnbe rax, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
xor dl, 91
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and dil, 96
test eax, 1880179600
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
sub dx, 56
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 20
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
