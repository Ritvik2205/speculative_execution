.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
mov dx, 73
test dl, bl
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
lea ax, qword ptr [rcx]
xchg rsi, rbx
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
lea eax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
test al, -84
and sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
