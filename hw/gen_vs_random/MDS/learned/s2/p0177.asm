.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and dx, 3
test dl, al
or bl, cl
or bl, 13
or cl, dl
jmp .bb_0.1
.bb_0.1:
or rdx, -109
and cl, al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 33
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
or bl, bl
xor dil, -124
test rsi, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
