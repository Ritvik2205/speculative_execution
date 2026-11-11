.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
lea bx, qword ptr [rax + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 63
mul di
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
test esi, eax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
add cl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], 44
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
setnp cl
add al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
