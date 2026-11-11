.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor bx, 46
and al, dl
xor dil, 8
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], esi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
jmp .bb_0.2
.bb_0.2:
test bl, 65
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or rax, -1561934807
test esi, 1857129931
jmp .bb_0.3
.bb_0.3:
test al, dil
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
