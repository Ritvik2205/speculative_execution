.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
test al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
test eax, 1729060510
or al, 54
test al, 127
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and dx, 3
or dil, bl
or dl, bl
and esi, 17
xor cl, 98
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
