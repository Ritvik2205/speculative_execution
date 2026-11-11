.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 33
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 96
sbb al, bl
xor dil, dl
xor cl, al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 50
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
