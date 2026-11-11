.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
movzx dx, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 28
dec rax
lea esi, qword ptr [rdi + rax + 42536]
cmovno esi, esi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 43
cmp rdi, rdx
add cl, -71
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
or rax, -357903210
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
