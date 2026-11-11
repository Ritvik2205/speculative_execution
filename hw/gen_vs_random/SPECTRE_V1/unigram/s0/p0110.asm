.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
or dl, 41
add dl, -65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 15
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rbx + rdx + 5]
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 45
xor ebx, 46
sub dl, dil
cmp bl, -114
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
