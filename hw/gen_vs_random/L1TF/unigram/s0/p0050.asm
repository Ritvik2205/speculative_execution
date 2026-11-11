.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 1
mov rsi, rcx
add dl, 68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
movzx rdi, dl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], -54
lea eax, qword ptr [rsi + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
cmovp si, dx
add sil, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
sub dil, dl
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
add al, 121 # instrumentation
setnb dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
