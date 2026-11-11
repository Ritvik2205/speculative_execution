.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
cmovnbe bx, cx
cmovp ebx, eax
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
or rsi, 20
jmp .bb_0.1
.bb_0.1:
or cl, 30
bts rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and cl, dl
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
or esi, -110
bt rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
