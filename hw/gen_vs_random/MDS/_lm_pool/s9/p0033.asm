.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rsi, 22
not cl
test sil, 17
or cl, 119
test al, -7
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
jmp .bb_0.2
.bb_0.2:
xor dx, 80
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
