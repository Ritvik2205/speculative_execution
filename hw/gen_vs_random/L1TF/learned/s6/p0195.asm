.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 37
sbb esi, 3
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 98
cmp dx, 66
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 94
dec edx
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
cmovs ax, si
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
