.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and al, -8
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
cmovp bx, cx
and dil, cl
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
and dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and al, al
or dl, -21
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and ax, -12519
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
or eax, -927349615
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
test bl, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
xor ebx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
