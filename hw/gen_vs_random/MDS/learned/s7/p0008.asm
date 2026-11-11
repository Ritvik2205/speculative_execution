.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 44
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
or bl, cl
test dl, dil
xor bl, al
test dil, 46
and al, al
xor rdi, -9
or cl, -36
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
