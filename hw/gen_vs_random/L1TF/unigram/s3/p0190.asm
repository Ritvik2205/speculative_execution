.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dx, ax
lea ax, qword ptr [rcx + rax + 10]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add bl, -116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
lea eax, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
add al, -34 # instrumentation
setnp dil
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 56
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
xor al, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
sbb bx, 21
add cl, -75 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
