.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, -59
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], -23
cmovnb rsi, rdi
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
cmovl rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovbe ebx, eax
and cx, -2
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
xor dil, -3
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and dl, 60 # instrumentation
cmovnl esi, eax
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
test sil, 41
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
