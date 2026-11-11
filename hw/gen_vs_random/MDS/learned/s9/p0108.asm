.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdi]
test al, dil
xor rbx, 89
xor bl, dil
xor al, sil
and al, dil
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test bl, al
btr bx, di
xor cx, -18
jmp .bb_0.1
.bb_0.1:
test al, dl
xor ax, -6793
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
