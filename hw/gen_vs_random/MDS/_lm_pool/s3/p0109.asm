.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
xor al, 99
test rdi, 4
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
or cl, dil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and dil, -39
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test al, -7
test ecx, -1843375753
test dl, cl
or rax, 302048971
or al, -61
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
