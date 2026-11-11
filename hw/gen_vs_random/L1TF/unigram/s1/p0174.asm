.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 14
and dl, -98
lea rcx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
bt rcx, rbx
lea dx, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
bt ebx, 62
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
sub ebx, 68
lea rdi, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 64
or dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
