.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or sil, sil
test ebx, -961564216
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
xor bl, cl
and bl, 68
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
xor al, bl
and ax, 13090
test al, bl
jmp .bb_0.1
.bb_0.1:
or al, 24
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
