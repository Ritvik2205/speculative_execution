.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 34
add al, 117
or esi, edi
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
xor al, dl
add dl, -1
btc si, cx
sub al, 26
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
