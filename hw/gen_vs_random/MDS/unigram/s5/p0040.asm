.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo edx, edx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
and ecx, -104
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
cmovnl edx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and dil, dil
and bl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
bt bx, dx
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
or si, cx
btc rax, 110
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and cl, 123 # instrumentation
cmovo dx, di
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
