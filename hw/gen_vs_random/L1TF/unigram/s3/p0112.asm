.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 31
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
test sil, bl
mov bl, dl
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
and dl, bl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rax
xor al, -127
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
cmovp esi, ecx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
add dl, 53
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
