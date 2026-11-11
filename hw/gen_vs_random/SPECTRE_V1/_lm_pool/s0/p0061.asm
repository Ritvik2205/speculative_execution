.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add sil, 2
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
test cl, -120
xchg edx, ebx
cmp bl, -114
and bl, -43
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
lea rcx, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
