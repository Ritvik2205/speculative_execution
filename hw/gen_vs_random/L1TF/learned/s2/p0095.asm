.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdx + rbx + 15]
sub si, di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and ecx, 58
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sbb dl, al
jmp .bb_0.2
.bb_0.2:
inc edi
and bl, bl
lea rbx, qword ptr [rcx + rdx]
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
