.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, sil
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
test di, 97
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or ecx, 63
xor dl, 34
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
test rcx, -613256812
cmovnb rbx, rcx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 100
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
or rsi, 97
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
not sil
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
cmovo edx, edi
and dl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
