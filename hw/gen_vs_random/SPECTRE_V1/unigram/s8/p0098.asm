.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -88
xor eax, edx
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
dec sil
cmp eax, -563371897
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
movzx ax, sil
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
