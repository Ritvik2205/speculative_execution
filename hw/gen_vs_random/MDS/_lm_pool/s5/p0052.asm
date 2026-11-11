.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
test edx, -372470678
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or dil, -78
or cl, dil
test sil, cl
xor rax, -773894210
and rsi, 57
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 14
xor eax, -127
or sil, cl
and si, -121
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
