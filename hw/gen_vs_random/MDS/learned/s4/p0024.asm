.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or bl, 127
or ax, -6817
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
xor dl, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or dx, 125
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
or al, 37
and cl, dil
or al, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor al, bl
test rax, -2052112368
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
