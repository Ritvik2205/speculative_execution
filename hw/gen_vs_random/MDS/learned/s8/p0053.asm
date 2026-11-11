.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
xor bl, -61
or rax, -689609688
or al, bl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and sil, -56
bt cx, ax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bt di, dx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
bt cx, si
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
