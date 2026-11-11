.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ecx, ecx
or sil, -27
lea esi, qword ptr [rcx]
add dl, -26 # instrumentation
adc ecx, edx
dec bl
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, ax
movsx ax, dl
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
lea rax, qword ptr [rbx + rax + 18]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 57
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 91
imul dil
sbb ax, -206
cmovb bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
