.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
and al, 67 # instrumentation
cmovl rcx, rbx
xor di, -83
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
bt ebx, 98
cmovl rsi, rax
cmovno cx, si
xor bl, -102
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btc dx, di
cmovnl eax, ecx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
cmovns ax, si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
xor rbx, 89
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
