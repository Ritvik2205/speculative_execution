.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 71 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
test rdx, 1657596343
add dil, 72
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
test eax, 133988823
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea di, qword ptr [rdi + rdx + 30816]
not cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
sets dl
setl cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
cwde
jmp .bb_0.2
.bb_0.2:
sub al, al
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
add rax, 977059290
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
