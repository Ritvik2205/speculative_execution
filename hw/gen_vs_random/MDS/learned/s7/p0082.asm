.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or rax, -689609688
test dil, 46
or al, 24
and dl, -73
xor al, 8
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or sil, al
jmp .bb_0.1
.bb_0.1:
and eax, 943733866
xor rdx, -59
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
