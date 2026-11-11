.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and sil, bl
cmovl esi, esi
xor ax, -6793
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
xor eax, -885380838
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
cmovnle di, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
and dl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
or dil, al
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
