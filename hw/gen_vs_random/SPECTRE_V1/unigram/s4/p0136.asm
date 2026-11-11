.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
imul cx, dx, -88
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 21
and dl, bl
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
add dil, 113 # instrumentation
setnb dil
sbb sil, cl
cmp cl, 90
sub eax, -882981501
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 19
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], bx
bt esi, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
