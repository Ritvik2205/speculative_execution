.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
and al, -68
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rbx + rsi + 69]
test ax, 13284
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 38
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rdi + rdx]
jmp .bb_0.3
.bb_0.3:
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
