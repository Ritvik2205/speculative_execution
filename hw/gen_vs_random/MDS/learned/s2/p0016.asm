.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
xor dl, -43
and rdi, 54
xor bl, -27
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
or rbx, -72
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.3
.bb_0.3:
or bl, -62
test bl, sil
and bl, 68
or bl, dil
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
