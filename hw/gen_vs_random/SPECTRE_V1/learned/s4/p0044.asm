.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
cmovno di, si
test al, -99
add dl, 47
mov dil, bl
cmovle ax, bx
setz bl
add bl, cl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
