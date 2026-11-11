.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
test dl, -37
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
adc eax, 457059541
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
sbb dil, bl
inc edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -63 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
xor cl, al
cmovs bx, si
setb sil
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
