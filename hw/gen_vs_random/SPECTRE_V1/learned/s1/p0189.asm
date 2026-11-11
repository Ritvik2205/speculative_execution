.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and dl, bl
and dl, al
sub cl, -21
movsx ax, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
cmp al, dl
sbb edi, 99
js .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
