.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb cx, cx
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
test cl, al
or ebx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
btr rsi, rax
cmovnb rsi, rdx
jmp .bb_0.1
.bb_0.1:
or edi, -88
or ebx, -15
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
or bx, 93
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
xor dx, 50
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
