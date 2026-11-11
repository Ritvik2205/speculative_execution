.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
cmp rcx, 12
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
cmp al, dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg sil, cl
neg rbx
mov dl, cl
and al, -54
and dl, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
