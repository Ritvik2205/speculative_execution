.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx]
lea edi, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and sil, al
add al, al
xchg ebx, ecx
mov bl, cl
add dl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
