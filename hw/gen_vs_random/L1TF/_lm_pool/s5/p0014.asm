.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
or dil, -113
lea ecx, qword ptr [rbx + rbx + 2102]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
setb al
jmp .bb_0.1
.bb_0.1:
sbb bl, al
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
jmp .bb_0.3
.bb_0.3:
or sil, cl
xor eax, -2123070438
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
