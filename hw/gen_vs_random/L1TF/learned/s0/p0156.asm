.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
bt ax, dx
sub dl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
