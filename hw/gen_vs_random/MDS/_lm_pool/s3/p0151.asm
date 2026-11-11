.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
xor cl, -13
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
test dl, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and al, 14
bt ax, di
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
or al, -75
xor si, 91
and dl, -73
bt ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
