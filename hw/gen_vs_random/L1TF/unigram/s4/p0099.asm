.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno al
bts rdi, rcx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
add al, -109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb edx, 23
lea ebx, qword ptr [rsi + rsi]
cmovz eax, esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
lea di, qword ptr [rax + rax + 1]
xor dl, al
lea ax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and ebx, edx
add dl, 64 # instrumentation
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
