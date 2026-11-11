.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
movsx rcx, sil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
cmovnp rsi, rbx
add al, -106
cwde
and al, -119
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
mul cl
xor ecx, 87
sub rdx, 34
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
