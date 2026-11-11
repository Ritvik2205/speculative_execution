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
add al, -47
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
add al, -109
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
sub eax, edx
jmp .bb_0.2
.bb_0.2:
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
adc esi, -39
add bl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, -98
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
