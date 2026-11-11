.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, 24
add dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
add bl, -12 # instrumentation
lea rdi, qword ptr [rsi + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
cmovz ecx, edi
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmovno rsi, rbx
and ecx, -38
or ebx, esi
and rbx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rbx]
lea rdx, qword ptr [rdx + rdi]
btr cx, bx
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
