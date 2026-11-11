.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 34
setz al
lea rsi, qword ptr [rsi + rdi]
lea edi, qword ptr [rdi]
inc al
add cl, -72 # instrumentation
cmovp esi, esi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
sub esi, -89
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
xor al, bl
sbb al, -23
test al, 15
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
or cl, -78
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
add di, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
