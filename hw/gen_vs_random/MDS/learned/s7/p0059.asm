.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 60
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and cx, -2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or al, -17
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and al, 35
test dl, dil
btr rax, 209
not sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor dl, al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
