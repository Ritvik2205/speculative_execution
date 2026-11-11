.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and sil, -94
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 8
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
cmovz rbx, rcx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
btc esi, 226
btc dx, si
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
bt edx, ecx
cmovp cx, di
cmovnz cx, dx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and bl, sil
btr edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
