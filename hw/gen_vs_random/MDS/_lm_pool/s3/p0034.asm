.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and dil, sil
test ax, 30932
test sil, -96
or al, dl
and sil, sil
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor al, 9
and rax, 452940266
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and sil, -69
test dil, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
