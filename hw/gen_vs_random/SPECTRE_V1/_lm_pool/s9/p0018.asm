.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc si, 6
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
bt edi, esi
test cl, -24
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
add al, cl
add cl, sil
and al, -54
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
lea di, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
