.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
btc ax, 21
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
or sil, dl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
bts eax, edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 84
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 29
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 85
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor si, ax
cmovnle rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 23
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
or eax, -1434249782
test dl, 19
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
cmovs di, di
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 6
test dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
test ecx, 98
sub al, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
add ecx, ebx
btc bx, dx
xor rdx, rdi
dec sil
cmovb eax, ebx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 91
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 54
xor rdi, rsi
sub rax, -701741274
cmovnbe rdx, rax
test al, dil
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
