.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
test rax, 1978892575
and dl, dl
jmp .bb_0.1
.bb_0.1:
or cl, sil
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
xor al, 122
or dl, bl
or rax, -1561934807
and cl, -71
not bl
and dil, 125
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
