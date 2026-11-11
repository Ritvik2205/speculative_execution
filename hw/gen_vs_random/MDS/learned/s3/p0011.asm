.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 67
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
test dil, -51
xor dl, 34
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
bt ecx, ebx
test al, cl
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and esi, 63
or sil, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor sil, 110
test dil, -51
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
