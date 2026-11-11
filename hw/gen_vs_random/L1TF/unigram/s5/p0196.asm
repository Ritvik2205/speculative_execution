.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 94
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
lea ax, qword ptr [rdx + rcx + 35]
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
add ecx, 84
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and bl, dl
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
