.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi + rcx + 98]
and rdi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdi]
or rbx, 18
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
sbb cl, bl
lea rax, qword ptr [rbx]
sbb esi, 85
btc ebx, 11
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
dec ax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
add sil, 100 # instrumentation
lea cx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
