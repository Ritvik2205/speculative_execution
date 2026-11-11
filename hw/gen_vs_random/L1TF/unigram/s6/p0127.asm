.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
movsx rbx, dil
bt ax, 205
cmovl edi, edx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
add cl, 39 # instrumentation
lea cx, qword ptr [rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 43
xor dil, dil
jmp .bb_0.1
.bb_0.1:
cmp rax, 921820217
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
lea esi, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
or dl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
