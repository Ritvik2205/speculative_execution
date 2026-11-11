.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
bts rdi, 130
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor bx, 35
or sil, al
jmp .bb_0.1
.bb_0.1:
test al, 22
and ax, -10351
or rax, 52
test edi, -1252846009
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
