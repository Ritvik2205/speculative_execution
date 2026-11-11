.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
movzx si, bl
lea dx, qword ptr [rdi + rax + 15]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
add cl, bl
setnle sil
lea rbx, qword ptr [rdx + rcx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 24
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
add al, 27 # instrumentation
sbb edx, edi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 33
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
