.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rcx + rbx + 2101]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
xor eax, ecx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
xchg rax, rdi
add al, 72 # instrumentation
cmovns dx, bx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub eax, edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 74
add al, -44
btr rcx, 195
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
add al, 3
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb di, si
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
