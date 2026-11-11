.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
or sil, al
xor rdx, -59
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or al, -24
and dil, dil
xor dil, dl
test ebx, -961564216
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
or cl, cl
test rdx, rax
or dil, -78
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
