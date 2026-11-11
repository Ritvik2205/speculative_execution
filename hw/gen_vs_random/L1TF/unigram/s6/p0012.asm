.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 67
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
bts rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 45
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
btr ecx, esi
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 55
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ebx
or dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
lea edx, qword ptr [rax + rdx + 8]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
