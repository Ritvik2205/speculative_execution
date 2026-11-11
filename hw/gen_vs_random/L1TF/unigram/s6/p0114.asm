.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -5
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
xchg eax, edi
cmovb eax, eax
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
or eax, -62
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and al, -68
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
lea edx, qword ptr [rax + rcx]
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
cmp rsi, 95
imul si, bx, 60
add dl, -57 # instrumentation
setz dl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
imul edx, edx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
