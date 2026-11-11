.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
or rsi, 33
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
btr dx, ax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor edi, 84
and sil, 74
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor dil, 81
xor rcx, 71
or al, -78
test al, dil
and rcx, -63
jmp .bb_0.2
.bb_0.2:
or ax, -20176
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
