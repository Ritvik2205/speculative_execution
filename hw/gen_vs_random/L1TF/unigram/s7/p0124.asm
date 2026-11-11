.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
cmp sil, -11
cmovs ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ebx
and ax, 37
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 51
mov sil, sil
and rcx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 85
cmovnp si, bx
jmp .bb_0.1
.bb_0.1:
dec di
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
add dl, dil
cmovbe edi, ecx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
