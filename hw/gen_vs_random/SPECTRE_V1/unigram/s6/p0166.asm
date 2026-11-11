.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc esi, esi
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
inc ecx
cmovnl ebx, eax
inc ax
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
add dl, 47
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
