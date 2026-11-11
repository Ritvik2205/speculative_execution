.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor sil, -33
xor rax, 620504108
add dil, cl
and cl, 86
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
neg rax
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
