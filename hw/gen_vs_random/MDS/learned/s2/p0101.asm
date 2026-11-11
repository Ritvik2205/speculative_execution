.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
xor ebx, 51
jmp .bb_0.1
.bb_0.1:
or eax, ecx
or bl, 13
and al, 35
and dl, dil
xor cx, -18
or al, al
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
xor al, dl
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
or al, -61
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
