.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
movsx edi, bl
add dl, 125
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 54
imul rcx, rbx, 85
add al, -21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
cmovns bx, dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
imul cx, ax, 52
lea di, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
