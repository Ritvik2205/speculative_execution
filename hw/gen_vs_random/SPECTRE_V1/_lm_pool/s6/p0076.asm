.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -44
or al, 19
bts si, di
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
jmp .bb_0.2
.bb_0.2:
and al, dil
cmovbe ecx, ebx
sbb al, cl
setz sil
or cl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
cmp cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
