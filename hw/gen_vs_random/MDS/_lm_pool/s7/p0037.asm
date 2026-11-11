.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
test cl, 54
xor dl, -59
and cl, -6
test ebx, -2015966884
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
xor al, 115
test al, 91
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
bt di, bx
test si, 40
btr dx, si
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
