.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
test sil, 29
jmp .bb_0.1
.bb_0.1:
test dil, -126
and ax, 7954
not bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
cmp dil, 55
jmp .bb_0.3
.bb_0.3:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and al, bl
inc eax
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
test ax, 7679
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
