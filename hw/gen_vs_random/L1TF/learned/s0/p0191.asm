.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, sil
add rax, -1969014465
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 56
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
cmovnle edx, esi
movzx esi, dl
movzx ecx, dil
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
sub dl, bl
jmp .bb_0.2
.bb_0.2:
add al, 71 # instrumentation
setp dl
xchg si, bx
sbb rax, -1477844571
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
cmovno edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
