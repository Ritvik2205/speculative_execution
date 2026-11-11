.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovp edx, edi
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
and rbx, 3
neg cx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
movzx ebx, cx
sub si, 2
or ebx, esi
add sil, 18
add rax, -1969014465
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 21
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 29
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
sub dl, cl
and rbx, 38
cmovnbe di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
