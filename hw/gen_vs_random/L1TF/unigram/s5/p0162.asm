.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 86
setb cl
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
lea cx, qword ptr [rbx + rbx + 78]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovo rcx, rbx
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
or si, dx
lea edi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
