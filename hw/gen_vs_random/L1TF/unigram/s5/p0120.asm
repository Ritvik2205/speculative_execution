.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
add al, 6 # instrumentation
cmovl edx, eax
xor di, 86
xor cx, 113
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rdx + rdi]
imul rax, rdi
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 72
add dl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
imul bx, si
lea di, qword ptr [rdi + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
