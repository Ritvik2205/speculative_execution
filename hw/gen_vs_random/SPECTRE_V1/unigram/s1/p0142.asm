.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
btc eax, 20
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rbx
movsx rcx, ax
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], ebx
setnb cl
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 94
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, 94
bts rdi, 80
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 78
lea rax, qword ptr [rcx]
setnz dil
movsx rcx, bx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 18
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
