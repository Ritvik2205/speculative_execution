.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 96
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rcx
add al, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnbe rax, rdx
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
dec edx
add bl, -75 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
sub ecx, eax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 90
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
