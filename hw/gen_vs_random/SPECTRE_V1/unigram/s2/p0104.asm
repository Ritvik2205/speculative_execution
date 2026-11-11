.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
add rdx, 95
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
add cl, 112 # instrumentation
sbb edx, 76
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 92
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
add dl, 121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
inc al
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
setp dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
