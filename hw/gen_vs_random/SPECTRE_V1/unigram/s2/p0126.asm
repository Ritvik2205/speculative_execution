.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
xor dl, dil
adc al, -92
lea ax, qword ptr [rax + rsi + 35]
cmovnle rbx, rax
add al, 22 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
cmovb rcx, rsi
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, cx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 72
or ax, ax
add bl, -27 # instrumentation
sets bl
cmovnb rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
