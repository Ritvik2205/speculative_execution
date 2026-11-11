.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -126
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
and dl, -59 # instrumentation
cmovbe ax, si
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and dil, bl
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
btc rsi, 80
cmovb ebx, edx
jmp .bb_0.1
.bb_0.1:
test rsi, rdi
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
or dl, -21
and rdx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
