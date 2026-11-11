.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and sil, -69
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
xor al, 115
or cl, -77
xor al, dl
xor dil, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test ecx, -1843375753
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and eax, -829294476
and esi, 30
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
