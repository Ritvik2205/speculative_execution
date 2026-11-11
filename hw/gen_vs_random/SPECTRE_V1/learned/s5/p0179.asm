.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
test al, 48
lea di, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov cl, dl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 36
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
setz dl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
