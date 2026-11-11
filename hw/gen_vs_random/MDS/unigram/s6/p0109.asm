.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test rdx, 58
or si, 94
or rdi, 21
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
cmovnbe eax, edi
and sil, 68 # instrumentation
cmovns cx, si
or ecx, 49
cmovb rax, rbx
and dl, 21 # instrumentation
cmovb bx, dx
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
test edx, -1561252782
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
