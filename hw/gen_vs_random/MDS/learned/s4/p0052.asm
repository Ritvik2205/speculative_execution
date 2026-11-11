.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 21
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and ax, 27170
not sil
and al, dl
test dl, -119
and al, bl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, 91
test edi, -1252846009
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
bts ebx, 205
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
