.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ax, di
btr esi, edi
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
xor dl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 37
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
movzx eax, al
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
