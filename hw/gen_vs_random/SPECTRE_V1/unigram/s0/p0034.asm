.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
sub ecx, eax
cmovp edi, ebx
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 62
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 37
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
cmovnp rcx, rdx
cmovno edx, ebx
or al, 38
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 28
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 85
add dil, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
