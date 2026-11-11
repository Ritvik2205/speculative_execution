.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, si
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and bl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test sil, -55
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and sil, 89
jmp .bb_0.1
.bb_0.1:
test bl, -9
and al, sil
and edx, -44
or cl, dl
or al, 74
xor ax, -5889
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
