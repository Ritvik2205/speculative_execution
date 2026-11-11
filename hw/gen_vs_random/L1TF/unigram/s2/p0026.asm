.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rcx
cmovo rbx, rdi
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
btr cx, ax
cmovz eax, ecx
dec al
add al, -3 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
adc dil, 62
add al, -21 # instrumentation
mov ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], si
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rdx, 23
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
