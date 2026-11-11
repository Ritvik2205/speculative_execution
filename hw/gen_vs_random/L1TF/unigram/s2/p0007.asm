.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
lea ecx, qword ptr [rcx + rsi + 16]
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
sub bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], si
sub ax, 19828
xor cl, al
setbe al
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 81
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
bts eax, 72
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
cmp dx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
