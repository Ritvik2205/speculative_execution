.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -117
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
xor cl, dl
add rax, -1969014465
or dl, dl
test eax, -1410822875
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
cmovnz ebx, ecx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
cmovno esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
