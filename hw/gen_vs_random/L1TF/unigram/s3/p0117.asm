.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and cl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 68
setnbe dil
imul bx, di
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
cmovnle edi, ecx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 12
setnb cl
btr edi, ebx
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rsi]
cmovs ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
