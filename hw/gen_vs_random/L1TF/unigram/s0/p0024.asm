.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 39
add al, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmovnbe rdx, rdi
sbb sil, sil
cmovnle rax, rcx
imul di, si, 74
cmovl edx, ecx
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
adc edx, edx
cmovnz ax, di
mov rbx, -813004896564518775
neg sil
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
