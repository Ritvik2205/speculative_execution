.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 98
xchg rdi, rbx
add al, -76 # instrumentation
adc al, 65
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
add cl, 32 # instrumentation
cmovnbe rax, rcx
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
add cl, 0 # instrumentation
adc sil, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
add ebx, -116
adc rsi, 110
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
