.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
movsx si, bl
lea edx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], esi
cmovnbe si, si
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
not dl
add sil, -111
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
or dl, 1 # instrumentation
add dil, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
adc bl, 1
lea ecx, qword ptr [rdi + rsi + 76]
adc al, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
