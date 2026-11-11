.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 62
or cl, dl
or dil, -78
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
bt ax, cx
or al, 37
test esi, 1857129931
and al, 82
or bl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and al, bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test rcx, -613256812
xor rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
