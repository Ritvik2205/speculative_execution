.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 67
cmp rax, 921820217
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
jmp .bb_0.1
.bb_0.1:
setnp dil
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
add cl, 55 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 8
xor dil, dl
sub edi, 56
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
