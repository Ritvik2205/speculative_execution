.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
add al, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
add dl, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
imul edi, ecx, 49
js .bb_0.1
jmp .exit_0
.bb_0.1:
add esi, 59
setnl al
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 47
xor al, -89
mov rbx, -8992833348021516010
add eax, -1174744897
movsx rdx, cx
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
add bl, -92 # instrumentation
cmovs ax, bx
lea rcx, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
