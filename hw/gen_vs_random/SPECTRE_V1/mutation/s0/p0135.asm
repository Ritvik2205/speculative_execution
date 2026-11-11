.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
adc dl, 48
lea rax, qword ptr [rdi]
sbb cl, cl
lea ax, qword ptr [rbx + rsi]
and ax, 2806
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
cmp bl, dl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
imul dx
adc eax, 34
lea cx, qword ptr [rdi + rbx + 48694]
and ax, 21910
lea rbx, qword ptr [rdi + rbx]
setno bl
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
jmp .bb_0.2
.bb_0.2:
cmp cl, bl
cmovo di, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
