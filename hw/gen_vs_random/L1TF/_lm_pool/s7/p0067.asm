.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
sbb ecx, 55
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 86
lea rdx, qword ptr [rcx + rbx + 82]
test eax, 899472326
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
