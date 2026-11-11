.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
cmovs cx, dx
xchg rcx, rcx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
cmovno ecx, esi
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
or ax, 12618
sub cl, cl
btc bx, 37
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
cmovl esi, eax
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and eax, 62
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
