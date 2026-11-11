.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and dl, -7
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
cmovbe cx, ax
bts dx, di
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor al, al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 82
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
or dil, -52
btc cx, 104
xor si, 87
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
