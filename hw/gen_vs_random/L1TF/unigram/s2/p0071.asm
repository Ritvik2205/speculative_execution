.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
cmovp edi, eax
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
imul rax, rax, -49
jmp .bb_0.1
.bb_0.1:
add cl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
add al, -67 # instrumentation
setz cl
setle sil
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
add al, -67 # instrumentation
setz dl
lea rdi, qword ptr [rdi + rax + 68]
add cl, -103 # instrumentation
cmovnl rdx, rax
xchg rcx, rcx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
