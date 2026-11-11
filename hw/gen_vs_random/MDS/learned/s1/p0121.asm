.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 205
or dl, dl
or al, 30
or al, cl
not dil
and ecx, -104
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
test al, 22
bt cx, bx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
test dil, al
and al, 35
test edx, -1561252782
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test al, dl
jmp .bb_0.2
.bb_0.2:
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
