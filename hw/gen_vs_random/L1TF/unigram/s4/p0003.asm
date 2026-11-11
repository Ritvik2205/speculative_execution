.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -25
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
bswap eax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
add bl, 37 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 17
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
test rdi, rdx
jmp .bb_0.1
.bb_0.1:
add rax, 909978580
and al, -68
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
lea bx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
