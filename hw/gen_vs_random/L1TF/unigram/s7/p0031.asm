.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edi, 57
cmovns si, dx
bts di, di
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and dl, 73
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 6
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rcx]
xor dl, bl
add cl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
dec si
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
