.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
movsx rsi, di
btr ax, cx
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 68
lea cx, qword ptr [rdx + rcx + 87]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
lea cx, qword ptr [rcx + rsi + 46]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 66
cmovp dx, si
adc al, -92
add dl, 9 # instrumentation
adc dl, dil
lea rsi, qword ptr [rax + rdi]
cwd
add dl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
