.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 13
not al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
or bl, bl
or sil, -78
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
xor ax, -12492
test rax, -363019044
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or cx, -42
or bl, dil
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rbx
jmp .bb_0.3
.bb_0.3:
test dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
