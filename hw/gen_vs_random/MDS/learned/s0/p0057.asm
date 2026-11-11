.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or dil, dil
xor al, 122
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
xor eax, 2063216578
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
xor rbx, 89
or bl, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
