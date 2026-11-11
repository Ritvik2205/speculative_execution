.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 75
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 76
test bl, cl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
cmovnb dx, si
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
xor dx, 15
and bl, 45 # instrumentation
cmovnb ax, si
xor sil, al
xor di, 93
or ecx, 5
and al, 20 # instrumentation
cmovp bx, di
xor al, dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
or cl, 6
cmovns rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
