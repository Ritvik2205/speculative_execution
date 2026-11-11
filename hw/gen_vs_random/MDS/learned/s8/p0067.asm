.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, di
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and ebx, 16
or ecx, 6
and dil, sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
xor bl, 67
xor dl, 40
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and cl, dl
xor ax, 31969
or rsi, 59
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
