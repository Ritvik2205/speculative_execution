.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 71
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 20
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 49
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rax], dx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 67
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rdx + rsi + 27]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rsi]
setz sil
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 39
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
btr edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
