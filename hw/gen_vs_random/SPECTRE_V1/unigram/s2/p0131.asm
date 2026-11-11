.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, cl
add cl, 22 # instrumentation
cmovns rdx, rcx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
add cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
sbb rcx, 61
mov dl, dl
cmovno esi, ebx
cmovno ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovno rax, rcx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
