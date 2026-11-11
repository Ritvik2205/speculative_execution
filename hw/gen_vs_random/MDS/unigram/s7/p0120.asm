.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 425331143
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rdx, rsi
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
bt eax, 151
test sil, -96
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rcx
and eax, 561041355
cmovp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or sil, -78
cmovs ax, bx
test al, sil
btr edi, 221
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
