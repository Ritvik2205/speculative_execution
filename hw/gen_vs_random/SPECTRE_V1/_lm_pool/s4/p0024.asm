.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
sbb ecx, 75
sub cl, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
cmp esi, 21
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
xchg al, cl
add al, al
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
movzx edi, bx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
