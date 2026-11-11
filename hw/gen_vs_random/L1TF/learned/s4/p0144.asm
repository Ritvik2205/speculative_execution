.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xchg esi, ecx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
inc edi
and dl, cl
inc eax
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
test rbx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
