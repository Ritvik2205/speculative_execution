.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -61
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and dl, cl
and sil, -9
and ax, 339
xor bl, -27
jmp .bb_0.1
.bb_0.1:
or dl, -21
test rbx, 12
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and dl, dil
bt di, si
or dl, bl
test al, 127
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rax, -1931765367
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
