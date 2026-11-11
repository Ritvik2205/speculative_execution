.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ecx, edx
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 19 # instrumentation
setnz bl
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
bswap ecx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
adc cl, bl
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and edx, -62
bt edi, 121
xor eax, -1721938664
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
