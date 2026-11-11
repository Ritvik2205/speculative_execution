.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
movsx rbx, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
xor ebx, -81
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
add sil, -95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
add al, -102
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
add rcx, 100
btc esi, edx
add cl, 88
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
btr rsi, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
