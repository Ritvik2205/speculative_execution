.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rax, -1969014465
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
or dl, dl
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
cmovno esi, esi
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
xor eax, -117
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
cmovnz ebx, ecx
test eax, -385619864
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
