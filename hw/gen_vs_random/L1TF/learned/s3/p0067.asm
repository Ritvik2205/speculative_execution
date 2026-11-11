.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
lea rbx, qword ptr [rdx + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
setnbe cl
cmovb ecx, ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 29
sub ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
