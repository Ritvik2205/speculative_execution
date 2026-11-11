.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, eax
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
lea si, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 70
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 68
setnbe sil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
add bl, 126 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
mul al
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
xor bx, 75
imul eax, edi
add al, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
