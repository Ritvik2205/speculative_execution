.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 73
or sil, cl
and dil, bl
or al, -75
or ax, 127
xor rsi, -117
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and di, 91
or rcx, 54
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or dil, dil
and rax, 79
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
