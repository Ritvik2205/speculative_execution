.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
xor al, 34
btr ax, cx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
test dil, -80
test dil, al
or al, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and al, dl
bt bx, di
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or sil, -78
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
