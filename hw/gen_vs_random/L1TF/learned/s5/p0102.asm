.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
add al, 93
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor al, 38
xchg eax, ebx
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
sub bl, -96
test al, -84
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and dl, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
