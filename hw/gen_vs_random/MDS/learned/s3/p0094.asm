.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or cx, 49
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and sil, -9
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
or rdi, -11
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
