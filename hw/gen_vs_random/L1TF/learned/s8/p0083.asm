.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
xor rsi, 70
xor bl, al
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
xchg edx, ecx
sbb bl, sil
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
