.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
or cl, -36
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
test al, 91
xor dl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
bt eax, edi
or bl, dil
and sil, -69
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and al, 106
and dil, 125
xor cl, 55
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
