.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
cmp dil, dil
setnle dl
lea bx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
test bx, 71
or cl, cl
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 73
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
setl al
add cl, -84 # instrumentation
xchg rdx, rcx
btr rax, 82
sub cl, dil
setnb sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
