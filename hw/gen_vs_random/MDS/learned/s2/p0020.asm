.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
and di, 99
test bl, dl
xor al, -4
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test rax, -2052112368
xor bl, dl
jmp .bb_0.1
.bb_0.1:
xor al, -26
test eax, -571234566
or al, dl
xor rdi, -9
and al, 84
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
or al, 54
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
test si, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
