.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and al, -68
or al, -48
jmp .bb_0.1
.bb_0.1:
movzx edi, di
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 43
add dl, dl
jmp .bb_0.3
.bb_0.3:
add cl, 65 # instrumentation
cmovo rcx, rax
jl .bb_0.4
jmp .exit_0
.bb_0.4:
test eax, 645518295
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
