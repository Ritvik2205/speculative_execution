.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
xor al, -19
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jmp .bb_0.1
.bb_0.1:
test al, -7
and bx, 42
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
xor al, 9
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xor dl, 40
jmp .bb_0.2
.bb_0.2:
cmovnp rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and esi, 59
cmovle ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
