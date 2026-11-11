.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
add bl, 68
xor rax, -2072052278
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 34
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
add dil, -7
sub al, -97
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 70
add esi, -124
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
and bl, 89
and rax, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
