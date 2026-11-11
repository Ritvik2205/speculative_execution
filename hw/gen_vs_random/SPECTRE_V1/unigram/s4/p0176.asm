.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
cmovnle rdx, rdx
test al, 70
mov rdx, 13
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
add dil, -42 # instrumentation
lea ebx, qword ptr [rdi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
add dl, 63 # instrumentation
cmovle di, si
lea rdi, qword ptr [rbx + rdx]
add sil, 36
add cl, -127 # instrumentation
movzx ecx, bl
and cl, 40
mov di, 86
add bl, 45 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
