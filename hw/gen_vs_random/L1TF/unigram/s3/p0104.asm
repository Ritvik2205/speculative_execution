.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rdx
setnp sil
lea ecx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
cmp si, 2
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 11
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
test rsi, rbx
inc dl
cmp rax, 16650668
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
