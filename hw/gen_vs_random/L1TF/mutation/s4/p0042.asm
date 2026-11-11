.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and edx, ecx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sbb cl, cl
sub ax, -27107
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rax, 1163013815
mov rax, rsi
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
