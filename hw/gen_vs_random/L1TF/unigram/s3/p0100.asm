.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
add rdi, 14
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], -50
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
cmovz rax, rdx
cmovs cx, ax
add cl, 107 # instrumentation
cmovnl di, di
add dl, 126 # instrumentation
setnb cl
cmovp bx, cx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
