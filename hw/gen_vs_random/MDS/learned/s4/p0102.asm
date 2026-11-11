.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
or dl, -21
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and ax, 5001
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add sil, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
