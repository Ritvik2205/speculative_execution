.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
or ax, -7150
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
or bl, al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
btr ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
test dil, bl
and al, 106
and rax, 627810357
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
