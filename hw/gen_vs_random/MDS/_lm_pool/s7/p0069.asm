.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
or al, 54
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
test dil, 46
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor bl, cl
test al, al
and dl, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
xor dil, 124
test bl, al
xor dl, bl
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
