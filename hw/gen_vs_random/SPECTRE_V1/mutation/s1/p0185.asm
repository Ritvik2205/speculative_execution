.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -56 # instrumentation
sbb rdx, -67
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -93
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
cmovbe cx, di
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xor al, bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
sbb rax, 786640702
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
mul dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
cmovb dx, di
or ax, -114
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
