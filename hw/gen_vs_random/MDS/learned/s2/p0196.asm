.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
or cl, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 70
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and ax, -10351
and al, -8
xor al, cl
jmp .bb_0.3
.bb_0.3:
or dl, bl
xor dl, -19
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
