.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and bx, dx
or ax, -17790
xor ebx, 91
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
bt ecx, 65
or dil, dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 38
jmp .bb_0.1
.bb_0.1:
and bl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
xor cx, bx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 36
bt ebx, ebx
xor ax, 2053
or eax, edi
cmovle rsi, rax
btc bx, 179
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
