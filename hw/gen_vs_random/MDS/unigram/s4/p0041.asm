.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 73
cmovle eax, edx
and sil, 65
or dil, -57
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 66
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rbx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
bt di, 1
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
or al, cl
bts rcx, 115
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
test dil, bl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
or bl, 73
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
