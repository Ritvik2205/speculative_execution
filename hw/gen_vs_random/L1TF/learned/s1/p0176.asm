.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 28
lea rax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 74
and bl, bl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
setno dil
cmp dil, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 84
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 29
sbb cl, 83
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
