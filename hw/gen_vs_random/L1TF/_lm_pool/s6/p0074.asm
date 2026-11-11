.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 46
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or al, -2
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btc cx, dx
and al, dl
cmovbe ecx, eax
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor si, -50
or cl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
cmp cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
