.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
btr edi, 221
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and dl, -41 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rcx
cmovns cx, di
xor ecx, edx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
btc rbx, rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
bts rax, 77
xor sil, cl
cmovl ecx, eax
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
