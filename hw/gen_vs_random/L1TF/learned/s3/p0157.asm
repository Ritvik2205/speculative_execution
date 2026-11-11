.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
movsx edx, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
sbb dl, al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
lea dx, qword ptr [rcx + rax + 20]
lea dx, qword ptr [rdi]
lea ebx, qword ptr [rax]
lea di, qword ptr [rdx + rbx + 39]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and bl, 89
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
