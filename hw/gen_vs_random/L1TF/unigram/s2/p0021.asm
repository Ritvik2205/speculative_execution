.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, eax
add cl, 19
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
imul ax, cx, 82
cmp ebx, 80
sub dil, sil
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
xchg dx, ax
test dil, al
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
test dil, dl
add dl, sil
lea rcx, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
