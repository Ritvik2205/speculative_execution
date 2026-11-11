.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and bl, -65
cmp di, 64
cmovle ax, bx
add sil, al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
bt eax, edi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 74
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
sbb edi, esi
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
bt rcx, 46
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
not dl
lea rax, qword ptr [rbx + rax]
sets cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
