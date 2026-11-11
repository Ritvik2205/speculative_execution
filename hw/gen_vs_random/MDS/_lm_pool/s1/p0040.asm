.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor bl, -27
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test eax, 1729060510
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
or cl, 7
or dil, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
