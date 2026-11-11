.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edi, si
add dl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
sub ebx, 98
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
lea di, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 54
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
