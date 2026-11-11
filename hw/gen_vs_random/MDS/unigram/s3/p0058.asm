.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 89
test edx, -372470678
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rsi
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rdi, 51
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
btc rdx, rbx
xor rdi, -9
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 72
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
or eax, -927349615
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
