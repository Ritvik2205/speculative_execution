.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -104
not ecx
test cl, 62
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
cmovb rdi, rdx
xor dl, 34
xor dil, bl
jmp .bb_0.1
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
and dl, -1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and bl, 26 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmovz di, di
and rdi, rax
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
and bl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
cmovz eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
btr cx, dx
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
