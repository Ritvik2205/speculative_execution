.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
or al, -61
or al, al
bt edi, ecx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
test dl, -119
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rdi
or dil, dl
test al, 127
or bl, -54
and cl, al
xor dl, 8
or al, sil
or al, 16
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor al, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
