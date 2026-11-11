.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -111
or sil, 52
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 76
jle .bb_0.1
jmp .exit_0
.bb_0.1:
bts rax, 27
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rbx
lea edx, qword ptr [rcx + rdx]
sbb bx, ax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 48
lea edx, qword ptr [rdi]
lea dx, qword ptr [rbx + rcx + 84]
or dl, sil
bts dx, di
lea ecx, qword ptr [rdx + rdx + 56339]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
