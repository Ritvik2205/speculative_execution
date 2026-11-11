.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 21
and rax, -1128038253
setno bl
and dl, -109
add rax, 6
js .bb_0.1
jmp .exit_0
.bb_0.1:
test rcx, -1420345926
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
sbb cl, 105
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
btc ax, cx
sbb cl, cl
adc cl, -19
btc rbx, rcx
or edx, 91
and rdi, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
