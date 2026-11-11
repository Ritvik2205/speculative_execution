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
btr rcx, 195
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb di, si
add al, 18
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
add al, -47
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
sub eax, edx
jmp .bb_0.2
.bb_0.2:
and sil, 111
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
or ax, 19104
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
xor rax, 376589024
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
