.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
movsx rsi, dl
imul bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 39
sbb cl, -104
add sil, sil
mul cl
imul sil
cmovle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 29
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 98
add dl, -114 # instrumentation
cmovl si, cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 39
cmovnb bx, bx
cmovb ecx, ecx
adc edx, 70
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 8
cmovns ax, cx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
movzx rdi, dx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
or sil, 39
cmovnbe rax, rax
cmovs esi, edx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
mul rbx
cmovs di, di
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
btc rsi, 140
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 69
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
not rax
bt ecx, 42
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 78
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
not si
sub bl, bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
xor edx, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
