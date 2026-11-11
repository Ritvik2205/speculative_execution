.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 98
sbb al, -14
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
setz cl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and bl, bl
lea esi, qword ptr [rcx + rdi]
jmp .bb_0.1
.bb_0.1:
add dl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
sbb al, 66
test sil, -31
cmovb cx, ax
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
