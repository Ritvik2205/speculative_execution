.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
cmovnp dx, ax
lea cx, qword ptr [rdx + rsi + 23]
js .bb_0.4
jmp .exit_0
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], 51
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
