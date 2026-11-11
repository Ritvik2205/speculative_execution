.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
xor dil, cl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
btc edi, esi
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 50
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
cmovz eax, esi
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
cmovnb dx, bx
cmovnb rcx, rdx
and rdx, 6
or dl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
