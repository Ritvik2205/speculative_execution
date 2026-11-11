.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdx + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
add dil, dl
bts ax, 20
add ax, 70
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 38
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 48
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 89
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 87
btr di, cx
btc rcx, rsi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
