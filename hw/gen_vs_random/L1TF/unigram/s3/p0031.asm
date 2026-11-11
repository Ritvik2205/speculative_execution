.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
not rbx
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and sil, sil
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
setz dil
xor si, -50
xor sil, sil
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
cmp edi, 25
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and sil, -90
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
