.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
cmovns rcx, rax
setbe bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 39
test bl, -8
neg rdx
and al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and al, bl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 34
add dil, -46 # instrumentation
cmovbe rdi, rdx
add rbx, 69
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
add dl, 110 # instrumentation
cmovb rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
