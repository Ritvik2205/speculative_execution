.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
cmp dx, 81
imul rsi, rcx, 90
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 70
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
lea eax, qword ptr [rdx + rcx + 30]
add al, 100 # instrumentation
lea si, qword ptr [rax]
cbw
sbb al, -23
btc edx, 77
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
