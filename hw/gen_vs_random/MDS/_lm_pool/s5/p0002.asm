.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -8
or al, 25
xor rcx, -2
test dil, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
test cl, -123
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 51
and cl, -71
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 43
and dil, cl
test rax, 1207043993
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
