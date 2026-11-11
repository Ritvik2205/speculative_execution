.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
cmovle cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
or al, cl
jmp .bb_0.1
.bb_0.1:
or sil, dl
test bx, 25542
or cl, dl
xor al, -4
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or sil, dl
and cl, cl
xor bl, -88
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
