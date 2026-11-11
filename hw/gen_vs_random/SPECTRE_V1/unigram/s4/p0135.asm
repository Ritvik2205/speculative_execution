.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
adc di, 93
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
mul bl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
neg edx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
adc ax, 24404
cmp rcx, 43
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 70
add sil, 118 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
inc rax
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
