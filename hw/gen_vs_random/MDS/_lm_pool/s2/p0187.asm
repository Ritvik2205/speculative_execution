.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 35
and dil, al
test bl, cl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
not bl
or sil, bl
jmp .bb_0.1
.bb_0.1:
and dx, 60
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
test bl, dil
and rbx, rcx
jmp .bb_0.2
.bb_0.2:
or ecx, esi
xor ax, 31969
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
