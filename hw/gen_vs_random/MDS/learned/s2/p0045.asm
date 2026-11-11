.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
or dl, -31
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
xor dil, -5
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
or bl, dil
xor dil, bl
and sil, bl
bt bx, cx
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
