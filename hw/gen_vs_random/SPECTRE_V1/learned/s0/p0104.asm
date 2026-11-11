.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
cmovbe rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
cmovs cx, dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add cl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
mov bl, bl
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
setp dl
add cl, 122 # instrumentation
cmovz rcx, rax
or rbx, 24
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
