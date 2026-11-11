.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
mov bl, sil
xor al, dil
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
add ax, 23362
mov dil, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, dil
and ax, 2806
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
cmovle rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
