.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
or al, dil
or bl, bl
xor cl, 15
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor bl, sil
or al, dl
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
