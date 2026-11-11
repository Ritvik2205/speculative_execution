.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, bl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
add al, -124 # instrumentation
setnz al
lea rcx, qword ptr [rdi + rsi + 85]
or al, al
cmp al, cl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rcx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rcx]
lea rbx, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
setns cl
and rcx, 22
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
setns dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
