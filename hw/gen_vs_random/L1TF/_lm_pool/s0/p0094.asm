.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
test al, -70
add al, 117
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 34
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rbx]
or sil, cl
and cl, al
and cl, 25
cmp al, dil
and cl, sil
mov dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
