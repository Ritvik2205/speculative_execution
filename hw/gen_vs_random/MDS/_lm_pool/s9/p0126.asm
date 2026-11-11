.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
bts rax, rdi
btr cx, si
jmp .bb_0.1
.bb_0.1:
test al, bl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
btc edi, 230
btc bx, 58
not al
test al, dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
bt di, ax
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 70
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
