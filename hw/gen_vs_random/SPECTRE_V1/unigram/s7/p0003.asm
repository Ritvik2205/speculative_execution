.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
lea ax, qword ptr [rbx + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 103 # instrumentation
cmovno edx, esi
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
movzx eax, dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 38
cmovno bx, si
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 33
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 44
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
