.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 127
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
xor cx, 70
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
and eax, -872608366
bts rdx, 255
cmovnle eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
not ebx
cmovp rdx, rdi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 70
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
bt ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
