.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
sbb ecx, edx
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
adc cl, bl
bswap ecx
lea rdi, qword ptr [rbx]
bt edi, 134
add al, 19 # instrumentation
setnz bl
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
xor eax, -105
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and edx, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
