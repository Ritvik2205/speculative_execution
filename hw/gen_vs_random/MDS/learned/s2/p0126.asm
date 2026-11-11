.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
and dil, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and sil, -56
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xor rdi, -9
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor rbx, 89
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
not sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 61
or al, -22
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
