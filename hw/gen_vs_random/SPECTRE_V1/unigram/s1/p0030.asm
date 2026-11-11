.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
lea dx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
test bl, -8
test dil, -116
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
add al, -47
movsx di, dl
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rdi
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
bts rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
