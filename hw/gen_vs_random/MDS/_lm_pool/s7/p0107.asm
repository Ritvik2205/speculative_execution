.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or cl, bl
btr di, dx
and sil, 74
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
bt si, cx
or al, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test al, 66
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 46
test dil, -80
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
test dl, 9
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
