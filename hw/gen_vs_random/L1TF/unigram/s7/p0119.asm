.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 43
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
mov edx, esi
setb al
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
neg edi
bt rbx, 100
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
sub dl, -78
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
