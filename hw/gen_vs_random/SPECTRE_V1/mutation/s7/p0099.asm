.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, ecx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, 72 # instrumentation
cmovns dx, bx
xchg rax, rdi
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
lea bx, qword ptr [rcx + rbx + 2101]
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
btr rcx, 158
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb di, si
add al, -109
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
add al, -44
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
sub eax, edx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
adc ax, -614
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
setnp al
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
xor al, -19
sub dl, dl
movzx ebx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
