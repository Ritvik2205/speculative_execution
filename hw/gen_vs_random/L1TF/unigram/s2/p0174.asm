.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 113 # instrumentation
setbe al
mov eax, ebx
imul sil
bts si, 59
sbb dil, 93
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
add ecx, 6
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
xor sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
setnle cl
and al, -68
not bx
test rsi, rdx
or bx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
