.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
or al, -2
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
jmp .bb_0.2
.bb_0.2:
or al, dil
and di, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
