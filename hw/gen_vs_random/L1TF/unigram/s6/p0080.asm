.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz sil
cwd
or al, -57
setnz al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 47
lea ebx, qword ptr [rdx + rax + 13]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
sbb dil, 25
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
