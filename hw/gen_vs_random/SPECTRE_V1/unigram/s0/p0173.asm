.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
adc si, cx
mul cl
btr ax, di
bt dx, di
movsx dx, al
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
adc bl, 27
add bl, -73 # instrumentation
setnbe bl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
cmp ebx, 85
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
lea rcx, qword ptr [rax + rcx + 59274]
setnb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
