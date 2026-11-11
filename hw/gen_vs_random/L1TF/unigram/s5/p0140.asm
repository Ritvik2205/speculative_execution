.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
sbb ax, -4845
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 46
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 7
movzx rax, ax
cmovl rsi, rbx
jmp .bb_0.1
.bb_0.1:
setnb dil
lea esi, qword ptr [rsi + rax]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
lea ebx, qword ptr [rax + rsi + 10]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 9
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
