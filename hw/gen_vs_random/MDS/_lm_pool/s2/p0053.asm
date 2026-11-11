.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor al, -19
xor al, sil
xor di, -83
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and al, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and bl, 68
or bl, -62
jmp .bb_0.1
.bb_0.1:
or dx, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
