.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
btr ax, si
not bl
xor dil, -70
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
bt di, cx
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and al, al
and al, 82
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and edx, -44
test al, -81
or cl, 7
test al, 66
test ecx, -1843375753
and al, -54
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
