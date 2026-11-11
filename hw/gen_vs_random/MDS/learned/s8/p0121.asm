.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
xor al, dl
and al, 49
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test edi, -1252846009
or bl, sil
not al
xor al, cl
and dx, 3
xor al, 55
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and bl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or al, -61
test eax, -1634766116
xor al, 99
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
