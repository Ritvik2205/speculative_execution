.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, al
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
or rdx, rsi
seto al
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 52
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmp bl, sil
or dl, -67
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
