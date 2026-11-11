.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
or eax, -62
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
jmp .bb_0.1
.bb_0.1:
add cl, 39 # instrumentation
lea cx, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
cmp si, 66
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
cmp dl, -56
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
