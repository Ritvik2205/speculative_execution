.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 87
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and edi, esi
add dil, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
movzx rbx, dl
add al, 27 # instrumentation
sbb esi, ecx
cmovp rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
add cl, 121 # instrumentation
cmovs esi, esi
and cl, al
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
