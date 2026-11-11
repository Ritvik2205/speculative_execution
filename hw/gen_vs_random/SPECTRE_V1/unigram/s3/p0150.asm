.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -33
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
movsx edx, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 35
cmovz ebx, esi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
sbb rsi, 5
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and al, -54
imul si, dx, 78
cmovnb cx, cx
add bl, al
cmovb ecx, ebx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
