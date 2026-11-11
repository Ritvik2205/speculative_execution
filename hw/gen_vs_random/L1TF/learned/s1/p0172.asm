.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
or cl, 89
btc si, 69
bts rbx, 27
sbb dl, cl
cmovnbe edi, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 32
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
cmp sil, -110
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 75
or si, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
