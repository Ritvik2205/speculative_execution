.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 65
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
sub sil, -99
lea rdx, qword ptr [rcx + rax]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, al
jmp .bb_0.2
.bb_0.2:
or dl, dil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test ecx, edx
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
