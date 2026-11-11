.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov rbx, -8992833348021516010
lea ax, qword ptr [rdx + rax + 36518]
lea ebx, qword ptr [rax + rax + 18654]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 38
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setb al
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 42
cmp esi, 80
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edi
lea rdx, qword ptr [rbx + rcx]
add al, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], esi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
movzx edi, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
