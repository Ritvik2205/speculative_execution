.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cmovle rcx, rcx
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sub esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
btr ecx, 13
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
test sil, bl
lea si, qword ptr [rbx + rdx + 54]
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 71
add cl, -36
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
