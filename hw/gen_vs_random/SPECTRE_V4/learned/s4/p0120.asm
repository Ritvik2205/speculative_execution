.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, -1434249782
add cl, cl
dec rdi
add bl, -72
or bl, cl
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
adc rdi, rdx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
