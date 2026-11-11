.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
add sil, -61
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
xor al, 38
xor bl, cl
add cl, -36
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovb dx, cx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
add ax, -24961
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
