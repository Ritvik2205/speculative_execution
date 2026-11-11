.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or sil, dil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
or cx, 49
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor cl, dil
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
xor sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
