.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 63
or al, 37
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor rcx, -2
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or cl, 6
or cl, 30
and sil, -56
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
test ecx, -1843375753
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor dil, -5
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
or cl, 30
or dl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
