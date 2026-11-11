.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
movzx ecx, ax
lea rdi, qword ptr [rax]
cwd
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
mov al, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
test al, 59
add rax, 913062684
mov dil, dl
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
or ecx, 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
