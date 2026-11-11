.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 116
sub dil, cl
or al, cl
cmp al, 114
sub rdi, -52
adc bl, 35
and dl, al
xor sil, 83
sub al, cl
or bl, bl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
xor ax, 30500
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
