.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
xor rdi, -9
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and dx, 3
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
cmovl rdx, rsi
or dl, -31
btr edx, edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
xor ecx, ecx
test dil, -80
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
