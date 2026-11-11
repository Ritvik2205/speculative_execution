.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
xor cl, dl
test eax, -1812342404
or dl, dl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
cmovno esi, esi
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
mov al, 79
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
add sil, -111
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
add eax, 760523556
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
