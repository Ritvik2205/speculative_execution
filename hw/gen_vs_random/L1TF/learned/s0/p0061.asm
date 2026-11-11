.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
sbb al, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor dl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 62
lea rax, qword ptr [rbx + rdx + 52]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
jmp .bb_0.4
.bb_0.4:
xchg dil, dl
jmp .bb_0.5
.bb_0.5:
or ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
