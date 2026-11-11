.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
cmp eax, 123533400
and dx, 38
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
jmp .bb_0.3
.bb_0.3:
cmp di, -78
jmp .bb_0.4
.bb_0.4:
test bl, -92
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 16
jmp .bb_0.5
.bb_0.5:
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
