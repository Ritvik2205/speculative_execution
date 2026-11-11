.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, rsi
or dl, -89
and ax, 31082
and dl, -75 # instrumentation
cmovp edx, edx
and cx, -2
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
cmovl rdx, rcx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rsi, 37
test rsi, 97
cmovb edx, ebx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
xor dl, al
and ax, 339
cmovnz rdi, rbx
and al, 34 # instrumentation
cmovno eax, esi
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
