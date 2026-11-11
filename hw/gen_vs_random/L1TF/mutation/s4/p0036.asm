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
cmovnz ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
add rax, -1969014465
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
xor eax, -117
jmp .bb_0.1
.bb_0.1:
mov dl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
