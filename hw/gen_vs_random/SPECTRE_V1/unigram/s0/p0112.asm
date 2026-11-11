.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or si, ax
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 84
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
mul di
or dl, 1 # instrumentation
add sil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl cx, ax
or bl, 65
bt ax, 36
adc dl, sil
sub dil, dl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
lea eax, qword ptr [rcx + rdi + 33]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
