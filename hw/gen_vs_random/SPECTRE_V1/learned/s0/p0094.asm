.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
cmp al, 77
test al, 34
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
