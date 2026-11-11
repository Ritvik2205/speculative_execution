.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp sil, 25
add dl, bl
inc dl
sbb bl, bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
jmp .bb_0.3
.bb_0.3:
add dil, 72
mov bl, al
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add dil, -75
lea dx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
