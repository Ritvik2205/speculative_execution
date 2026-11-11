.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
or esi, ebx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rax, 498847670
xor bl, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor al, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
xor dil, bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
test al, cl
and ecx, -104
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
