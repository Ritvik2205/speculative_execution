.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and sil, bl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or cl, 119
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and al, al
and sil, dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
bt di, bx
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
