.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, al
test al, 84
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 22
add di, 44
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
cmovo dx, cx
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
adc cl, cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
