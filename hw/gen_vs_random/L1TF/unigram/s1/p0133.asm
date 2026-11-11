.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
inc dx
add al, 27 # instrumentation
sbb eax, ebx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
lea eax, qword ptr [rbx + rcx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and esi, 41
xor bl, -6
lea rbx, qword ptr [rax + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
bt rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
adc rcx, 5
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
