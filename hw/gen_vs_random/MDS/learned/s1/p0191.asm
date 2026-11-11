.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -78
xor al, bl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor ax, -4010
not bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test cl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor dil, sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
or rdx, -48
or ax, -14271
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
