.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul al
add rax, -845342150
add bl, 70
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 86
movzx eax, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
setbe bl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
mov dl, bl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 36
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 34
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
bts si, cx
movsx bx, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
