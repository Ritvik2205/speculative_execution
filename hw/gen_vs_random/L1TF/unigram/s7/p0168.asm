.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rbx
btr rbx, rsi
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
cmovno bx, ax
btr si, ax
movzx edi, cx
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
imul edi, ebx
btc rcx, 59
cdq
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
mov cl, 29
or ecx, edi
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
