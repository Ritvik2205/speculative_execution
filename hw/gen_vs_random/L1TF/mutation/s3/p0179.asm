.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and edx, ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, -109
sub ax, -27107
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
mov rax, rsi
add bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
