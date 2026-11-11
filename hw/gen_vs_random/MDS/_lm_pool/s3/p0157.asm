.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
xor bl, cl
and rdx, 35
or bx, 64
and cl, -111
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
test al, sil
and dl, sil
and bx, 67
test rdx, 96
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rcx, -63
or al, 24
jmp .bb_0.2
.bb_0.2:
test rax, 1214712583
btr dx, cx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
