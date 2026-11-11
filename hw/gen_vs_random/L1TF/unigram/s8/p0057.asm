.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], cx
mul rdx
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
cmovnl rax, rcx
add cl, 89 # instrumentation
adc dil, cl
add al, -102
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
cmp si, 90
and cl, 37
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
inc bl
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
