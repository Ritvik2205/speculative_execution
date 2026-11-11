.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
setnb sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 84
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
add al, -27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 40
and al, -119
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
dec dl
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 40
cmovl rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
or di, bx
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
dec dil
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
