.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdi, di
setz sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], eax
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
lea ax, qword ptr [rax]
lea dx, qword ptr [rbx]
btc dx, si
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
sub cl, -49
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rbx, -88
bt rdx, rbx
seto al
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 38
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
add cl, 77 # instrumentation
sbb ecx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
