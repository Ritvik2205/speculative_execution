.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
inc al
setno dl
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
xor dl, 19
or bx, 90
lea ecx, qword ptr [rbx + rax]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
movzx rdx, dil
bt rsi, 32
add dl, 125
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xchg dl, cl
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
