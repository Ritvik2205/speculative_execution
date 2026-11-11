.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ecx, esi
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
btr edx, ebx
cmovnle di, di
test cl, dl
xor dl, -59
jmp .bb_0.1
.bb_0.1:
and dl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and ecx, -104
and sil, cl
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and sil, -69
test dx, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
xor dil, al
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
