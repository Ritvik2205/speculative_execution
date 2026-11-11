.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
or cl, cl
btr ax, 193
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
not sil
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
xor al, 55
and ecx, -104
or cl, bl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
bts ebx, 205
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
