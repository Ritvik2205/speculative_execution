.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor dil, al
bt ax, cx
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor sil, -15
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor cl, 98
test al, cl
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
