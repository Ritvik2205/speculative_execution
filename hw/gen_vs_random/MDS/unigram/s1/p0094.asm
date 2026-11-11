.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 65
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
cmovb rcx, rbx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
xor bl, -61
and ecx, -104
test dl, 9
btr rsi, 207
cmovnz di, dx
and al, -87 # instrumentation
cmovo ax, si
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovbe dx, di
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
