.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
adc sil, -18
test al, 70
or dx, cx
imul dx, di
jns .bb_0.1
jmp .exit_0
.bb_0.1:
inc sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
sub bl, 96
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
