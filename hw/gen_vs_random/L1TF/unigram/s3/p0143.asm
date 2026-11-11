.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
lea rdi, qword ptr [rdi + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
cmp rax, rax
and al, al
add cl, -94 # instrumentation
setnb bl
bts rax, rbx
inc dl
sbb di, 80
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
movzx ax, dl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
