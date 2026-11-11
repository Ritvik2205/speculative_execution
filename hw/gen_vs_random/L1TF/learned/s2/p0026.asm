.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
cmp esi, 110
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or al, -57
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or rax, 1808026647
jmp .bb_0.1
.bb_0.1:
imul di, cx, 49
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
