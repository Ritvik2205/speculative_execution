.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 9
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
xor dl, 8
jmp .bb_0.1
.bb_0.1:
test sil, 41
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and di, 99
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor al, 115
or cx, -42
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
