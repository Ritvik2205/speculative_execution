.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
lea dx, qword ptr [rdx + rdx]
cmovo dx, ax
add dl, 38 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
setnle al
add cl, 46 # instrumentation
sbb rdi, 36
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
test dil, -116
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 13 # instrumentation
setns dl
test cl, dl
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
xor cl, -91
or sil, cl
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
