.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1276549484
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
or bl, al
sub rax, -1628299544
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
mov al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
