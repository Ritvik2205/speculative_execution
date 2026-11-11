.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
lea dx, qword ptr [rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 53
test cl, 67
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 16
sub cl, -49
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and sil, dl
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
