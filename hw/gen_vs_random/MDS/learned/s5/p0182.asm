.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
or dil, bl
xor cl, sil
and cl, dil
and cl, -19
and sil, cl
xor al, bl
xor bx, 59
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
