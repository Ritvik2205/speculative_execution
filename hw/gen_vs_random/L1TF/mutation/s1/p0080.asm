.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rdx + 13440]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -58
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
cmovnz ebx, esi
cmp rax, 921820217
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
movzx edx, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
sbb al, -23
sub al, -75
lea cx, qword ptr [rax + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
