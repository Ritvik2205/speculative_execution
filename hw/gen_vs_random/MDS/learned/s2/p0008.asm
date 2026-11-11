.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and al, dil
and rax, -731384280
or al, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test dil, 46
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
xor cl, -13
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or bl, sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
