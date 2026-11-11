.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
sbb ecx, edx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
bswap ecx
and edx, -62
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
add al, 19 # instrumentation
setnz bl
xor eax, -105
bt edi, 134
adc cl, bl
lea rdi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
