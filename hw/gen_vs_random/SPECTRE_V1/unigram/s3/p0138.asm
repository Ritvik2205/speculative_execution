.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 28
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
cmovnz si, dx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
xchg edi, eax
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 41
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xchg cl, cl
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rax + 77]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
