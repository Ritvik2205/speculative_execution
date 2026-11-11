.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
add al, -13
cmovle rcx, rsi
sbb al, 49
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
sbb dl, 127
test al, 48
or rax, -1571963467
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
xchg al, dl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
adc bl, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
