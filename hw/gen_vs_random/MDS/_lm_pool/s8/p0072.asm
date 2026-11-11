.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test dil, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and cl, -111
test edx, -1561252782
xor al, 9
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
or rbx, -77
not bl
xor sil, 94
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test al, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
or al, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
