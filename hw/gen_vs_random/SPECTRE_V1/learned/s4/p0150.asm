.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xchg esi, ecx
test sil, 97
and dl, cl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
cmp dl, bl
test rbx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
