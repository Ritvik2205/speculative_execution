.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
lea rax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
sub cl, 32
add sil, 18
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
or cl, 92
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 70
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
setnbe bl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
xchg al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
