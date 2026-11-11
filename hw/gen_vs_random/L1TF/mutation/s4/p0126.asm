.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
test dl, bl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
or rax, -263404965
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
cmovnbe edi, edx
btc edi, edi
lea edi, qword ptr [rbx]
sub ax, 19828
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
bts rbx, rsi
add dl, 40 # instrumentation
cmovp rcx, rdx
xor cl, al
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
